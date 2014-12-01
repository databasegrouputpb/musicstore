#!/usr/bin/env python

# music_parse -- parses all music in the top level directory and enters the ID3 tag info
#               into a database for use with a website

import os
import sys
import sqlite3
from mutagen.easyid3 import EasyID3

MUSICPATH = os.path.expanduser("~/bin/musicstore/music")    # top-level directory for music
DBHOME = os.path.expanduser("~/bin/musicstore")             # the home directory for the database
DBNAME = "myserver.db"                                      # name for the sqlite database

DBPATH = os.path.join(DBHOME, DBNAME)


# yields absolute paths for the mp3 files
def yield_abspaths(dir):
    for directory_paths,_,files in os.walk(dir):
        for file in files:
            yield os.path.abspath(os.path.join(directory_paths, file))


# creates an entry in the database for the mp3 at dir
def create_entries(db, dir):

    cur = db.cursor()

    # lists for checking redundancy
    artists = []
    albums = []

    for song in yield_abspaths(dir):
        if os.path.basename(song).split(".")[1] == 'mp3':

            info = EasyID3(song)

            try:
                artist = info['artist']
                album = info['album']
                year = info['date']
                title = info['title']
                genre = info['genre']

            except KeyError, e:
                print "KeyError: %s" % e.args[0]


            if artist not in artists:

                cur.execute("INSERT INTO artist(artist_name) VALUES (?)", artist)
                artist_id = cur.lastrowid

                artists.append(artist)

            else:
                artist_id = artists.index(artist) + 1


            if album not in albums:

                cur.execute("INSERT INTO album(album_name, date_released, artist_id) VALUES (?,?,?)", [album[0], year[0], artist_id])
                album_id = cur.lastrowid

                albums.append(album)

            else:
                album_id = albums.index(album) + 1

            cur.execute("INSERT INTO song(song_name, artist_id, album_id, mp3_path) VALUES (?,?,?,?)", [title[0], artist_id, album_id, os.path.abspath(song)])
            cur.execute("INSERT INTO genres(genre_title) VALUES (?)", genre)

    db.commit()


if __name__=='__main__':

    # create the database and begin entering ID3 tag info
    try:
        db = sqlite3.connect(DBPATH)

        cur = db.cursor()

        # shows all current tables in database at DBPATH
        cur_tables = [i[0] for i in cur.execute("SELECT name from sqlite_master WHERE type='table'")]


        # create tables that don't exist
        if not ('album' in cur_tables):
            cur.execute("""
                        CREATE TABLE album (
                            album_id INTEGER PRIMARY KEY NOT NULL,
                            artist_id INTEGER NOT NULL,
                            album_name TEXT NOT NULL,
                            date_released DATE
                        );
                        """)

        if not ('artist' in cur_tables):
            cur.execute("""
                        CREATE TABLE artist (
                            artist_id INTEGER PRIMARY KEY NOT NULL,
                            artist_name TEXT NOT NULL
                        );
                        """)

        if not ('genres' in cur_tables):
            cur.execute("""
                        CREATE TABLE genres (
                            genre_id INTEGER PRIMARY KEY NOT NULL,
                            genre_title TEXT NOT NULL
                        );
                        """)

        if not ('members' in cur_tables):
            cur.execute("""
                        CREATE TABLE members (
                            member_id INTEGER PRIMARY KEY NOT NULL,
                            artist_id INTEGER
                        );
                        """)

        if not ('song' in cur_tables):
            cur.execute("""
                        CREATE TABLE song (
                            song_id INTEGER PRIMARY KEY NOT NULL,
                            album_id INTEGER NOT NULL,
                            artist_id INTEGER NOT NULL,
                            song_name TEXT NOT NULL,
                            mp3_path TEXT NOT NULL
                        );
                        """)

        create_entries(db, MUSICPATH)


    except sqlite3.Error, e:
        print "Error: %s" % e.args[0]
        sys.exit(1)

    finally:
        if db:
            db.close()

#!/usr/bin/env python

# music_parse -- parses all music in the top level directory and enters the ID3 tag info
#               into a database for use with a website

import os
import sys
import MySQLdb
from mutagen.easyid3 import EasyID3


HOST = "localhost"                                          # host name for the db
USER = "deathgrindfreak"                                    # mysql user
PASS = "calabiyau"                                          # mysql password
DBNAME = "musicstore"                                       # name of the database
MUSICPATH = os.path.expanduser("~/bin/musicstore/music")    # top-level directory for music


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

            print artist, album, year, title, genre

            if artist not in artists:

                cur.execute("INSERT INTO artist(artist_name) VALUES (%s)", artist)
                artist_id = cur.lastrowid

                artists.append(artist)

            else:
                artist_id = artists.index(artist) + 1


            if album not in albums:

                cur.execute("INSERT INTO album(album_name, date_released, artist_id) VALUES (%s, %s, %s)", [album[0], year[0], artist_id])
                album_id = cur.lastrowid

                albums.append(album)

            else:
                album_id = albums.index(album) + 1

            cur.execute("INSERT INTO song(song_name, artist_id, album_id, mp3_path) VALUES (%s, %s, %s, %s)", [title[0], artist_id, album_id, os.path.abspath(song)])
            cur.execute("INSERT INTO genres(genre_title) VALUES (%s)", genre)

    db.commit()


if __name__=='__main__':

    # create the database and begin entering ID3 tag info
    try:
        db = MySQLdb.connect(HOST, USER, PASS, DBNAME)

        cur = db.cursor()

        cur.execute("""
                    CREATE TABLE IF NOT EXISTS album (
                        album_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
                        artist_id INT NOT NULL,
                        album_name TEXT NOT NULL,
                        date_released DATE
                    );
                    """)

        cur.execute("""
                    CREATE TABLE IF NOT EXISTS artist (
                        artist_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
                        artist_name TEXT NOT NULL
                    );
                    """)

        cur.execute("""
                    CREATE TABLE IF NOT EXISTS genres (
                        genre_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
                        genre_title TEXT NOT NULL
                    );
                    """)

        cur.execute("""
                    CREATE TABLE IF NOT EXISTS members (
                        member_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
                        artist_id INT
                    );
                    """)

        cur.execute("""
                    CREATE TABLE IF NOT EXISTS song (
                        song_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
                        album_id INT NOT NULL,
                        artist_id INT NOT NULL,
                        song_name TEXT NOT NULL,
                        mp3_path TEXT NOT NULL
                    );
                    """)

        create_entries(db, MUSICPATH)


    except MySQLdb.Error, e:
        print "Error: %s" % e.args[0]
        sys.exit(1)

    finally:
        if db:
            db.close()
        print "Done."

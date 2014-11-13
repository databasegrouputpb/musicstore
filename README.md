musicstore
==========

Our database project for Fall 2014

##Intro
I apologize ahead of time if this comes across as overly pedantic, but I figured that this might be the best way to go about this.  The following outlines some installation instructions that anyone of us needs to impart to the rest of the group in order to run our project (feel free to add to it, if anything you've added to the project needs to be explained).

##Git Installation
Since a few of us in the group have never used git before, here's a bit of a crash course on the topic.

In order to install git, visit the git page and find the binary for your preferred OS: [git](http://git-scm.com/downloads).

After you've completed the setup, you can clone the project through git bash with:

    git clone https://github.com/databasegrouputpb/musicstore.git

Or by copying the above url into the GUI version.

After that, you should have a directory called "musicstore" in your home directory somewhere that contains the current project.

Following the cloning of the project, you'll need to learn a few more commands in order to push your edits or pull new ones off of the server.  This [tutorial](http://git-scm.com/doc) should be able to provide you with whatever you need.

##Postgresql Installation
Since I'm working off of Linux, this might be a little tricky.  But either way, you'll need to go ahead and grab a [binary](http://www.postgresql.org/download/) from the Postgresql website and install it.

I've created a dump file of the current database, it needs some work but it's a start anyway.  To load the file into postgresql, issue the following command:

    psql musicstore < musicdb.sql

I'm not sure how this will work on windows, but consult the [postgre documentation](http://postgresql.org/docs) if you have any trouble.

Some handy commands I've found thus far:

    \h              -- lists some sql commands
    \l              -- lists the database in postgre
    \dt             -- shows all of the tables for the current database
    \d+ TABLENAME   -- describes the columns of a the table "TABLENAME"

I've also stumbled upon a big music database dump that might be helpful in populating our database once we've got the project on it's way (it even uses Postgre!): [MusicBrainz](https://archive.org/details/musicbrainzdata)

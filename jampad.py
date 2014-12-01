import sqlite3
from flask import Flask, request, session, g, redirect, url_for, \
        abort, render_template, flash


# DB config
DATABASE = './jampad.db'
DEBUG = True
SECRET_KEY = 'development key'

# create the app
app = Flask(__name__)
app.config.from_object(__name__)


# connect to the database
def connect_db():
    return sqlite3.connect(app.config['DATABASE'])


@app.before_request
def before_request():
    g.db = connect_db()


@app.teardown_request
def teardown_request(exception):
    db = getattr(g, 'db', None)
    if db is not None:
        db.close()

# root view
@app.route('/')
def title_page():
    return render_template("layout.html")


if __name__ == '__main__':
    app.run()

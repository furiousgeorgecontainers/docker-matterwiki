# Matterwiki

This is just a docker container for the [Matterwiki](http://matterwiki.com/) application.

This implementation uses the SQLite database to store the data.  A tag may be created for a MySQL implementation at a further date.


## Instructions

```
docker run --name=matterwiki -d -p 80:5000  -v $PWD/db:/matterwiki/db furiousgeorge/matterwiki
```

This will run the wiki on port 80, and mount the data folder under your working directory.

As the instructions on the Matterwiki site state, after this docker container is running, go to yourserver.com/#/setup to add an admin user.

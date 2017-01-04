## Preface

This project is a demo online gaming matchmaking system. 

This project is based upon https://github.com/vladotesanovic/angular2-express-starter

## Install / Development

```bash
# create postgres database
$ su - postgres
$ createdb mydb
$ psql -s mydb
# create user someuser password 'somepassword';
# GRANT ALL PRIVILEGES ON DATABASE mydb TO someuser;
# psql mydb < misc/dump.sql


# Install dependencies
npm install

# start server
npm run start

# start server in debug mode
# for specific debugging guidelines check: https://blog.hospodarets.com/nodejs-debugging-in-chrome-devtools
npm run start:debug

# Client url: http://localhost:4200
# Application ( epxress ) API: http://localhost:4300
```

Install Redux DevTools chrome extenstion:

https://chrome.google.com/webstore/detail/redux-devtools/lmhkpmbekcpmknklioeibfkpmmfibljd

## Build / Production

```bash

npm run build

## Deploy dist folder to app server

Structure of dist folder:

/dist/server <-- expressjs
/dist/client <-- angular2

```

## Note

All html and css are from: http://www.w3schools.com/howto/



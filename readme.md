# Book service

This program is a server for searching books. 
It allows you to perform the following actions:

- getting a list of all books;
- getting detailed information about every book;
- searching books by author, publisher, year and keywords from description.

# Instalation

```
   docs/       Books application API
   server/     program source files
   sql/        database creation scripts
   README      this files
   
```   

- download files;
- open MS SQL server and run scripts from folder sql 'create_db.sql' for database  creation and 'create_db_script.sql' for tables and data creation;
- install NodeJS, if you haven`t it.

# Requirements

NodeJS version 10, MS SQL Server version 8

# Quick start

On command line, type in the following commands:

```
   cd "path to the folder 'server' "
   npm install
   node app.js
   
```

After that run your browser at the address:

```

   http://127.0.0.1:1337
   
```

How to use this program see API documentation: doc.html  
  
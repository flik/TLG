

## Requirements
PHP version: 7.2
Node version: v8.11.1
npm version: 5.6.0

Apache rewrite module must be enable, PDO, Mysql extensions must be installed and enabled.

You can check libraries detail in your composer.json file.

## Installation

Just clone the project in in your www or htdocs directory.

Go into project folder
Then you can install all dependencies via Composer by running this command:
```bash
composer install

```
Composer detail:
https://getcomposer.org/

```bash
npm install

```

# Setup Database
All migration files are there but I have installed some dummy data and configuration for test perpose.
So, You need to create new db and import sql file which is in db folder.

Then modify .env file with database name, user and password.
 

# Unit Testing 
Start your XWAMP or LAMP servers.

//all test are in ./dms/tests/unit

Before run the app, run unit test command from project folder. 


# API detail







```bash
./vendor/bin/phpunit
```
If tests are running perfectly without error then your project is ready.

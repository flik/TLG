

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

## Setup Database
All migration files are there but I have installed some dummy data and configuration for test perpose.
So, You need to create new db and import sql file which is in db folder.

Then modify .env file with database name, user and password.
 

## Unit Testing 
Start your XWAMP or LAMP servers.

//all test are in ./dms/tests/unit

Before run the app, run unit test command from project folder. 

```bash
./vendor/bin/phpunit
```
If tests are running perfectly without error then your project is ready.


## API detail

```php
<?php

require __DIR__.'/vendor/autoload.php';

$client = new GuzzleHttp\Client;

try {
	
    $response = $client->post('http://dms.local/oauth/token', [
        'form_params' => [
            'client_id' => 4,
            // The secret generated when you ran: php artisan passport:install
            'client_secret' => 'eVMGbhfF7m99NhtKVoGXvM6yIQ4t9ptXbj04P8b2',
            'grant_type' => 'password',
            'username' => 'admin@me.com',
            'password' => '123456',
            'scope' => '*',
        ]
    ]);

    // You'd typically save this payload in the session
    $auth = json_decode( (string) $response->getBody() );
//echo $auth->access_token; exit;


    $response = $client->get('http://dms.local/api/users', [
        'headers' => [
            'Authorization' => 'Bearer '.$auth->access_token,
        ]
    ]);

    $users = json_decode( (string) $response->getBody() );

    $usersList = "";
    foreach ($users as $user) {
        $usersList .= "<li>{$user->name}".($todo->email ? '✅' : '')."</li>";
    }

    echo "<ul>{$usersList}</ul>";

} catch (GuzzleHttp\Exception\BadResponseException $e) {
    echo "Unable to retrieve access token.";
}

```

#Tool Library Gadget (TLG)
Just skeleton to start api application with laravel.

## Requirements
- PHP version: 7.2
- Node version: v8.11.1
- npm version: 5.6.0

Apache rewrite module must be enable, PDO, Mysql extensions must be installed and enabled.

Create a Virtual host with the name tlg.local and point the directory TLG/public/

Reference link for help: https://ourcodeworld.com/articles/read/584/how-to-configure-a-virtual-host-for-a-laravel-project-in-xampp-for-windows

You can check libraries detail in your composer.json file.

### Reference links:
 - https://laravel.com/docs/5.6/authentication#included-authenticating [Auth]
 - https://laravel.com/docs/5.6/passport#deploying-passport [Token JWT]
 - http://laratrust.readthedocs.io/en/5.0/usage/concepts.html [ACL]
 - https://laravel.com/docs/5.6/frontend [Vue]

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
npm install & npm run dev

```

## Setup Database
All migration files are there but I have installed some dummy data and configuration for test perpose.
So, You need to create new db and import sql file which is in db folder.

Then modify .env file with database name, user and password.

Then run below all commands:

```bash
php artisan config:clear
php artisan cache:clear 
php artisan view:clear
php artisan key:generate
```

## Unit Testing 
Start your XWAMP or LAMP servers.

//all test are in ./TLG/tests/unit

Before run the app, run unit test command from project folder. 

```bash
./vendor/bin/phpunit
```
If tests are running perfectly without error then your project is ready.

## Protip: 
When visiting the endpoint using Postman, set the Header ``` Accept: application/json ``` or Laravel Passport would never know it's an API client and thus redirect to a /login page for the web.
- Here is documentation of some end points  [RESTED_API_DOCUMENTATION](https://github.com/flik/TLG/blob/master/RESTED_API_DOCUMENTATION.txt)
## API detail
Just create an index.php and install  [Guzzle](https://github.com/guzzle/guzzle) by composer

```php
<?php
//index.php 
require __DIR__.'/vendor/autoload.php';

$client = new GuzzleHttp\Client;

try {
	
    $response = $client->post('http://tlg.local/oauth/token', [
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


    $response = $client->get('http://tlg.local/api/users', [
        'headers' => [
            'Authorization' => 'Bearer '.$auth->access_token,
        ]
    ]);

    $users = json_decode( (string) $response->getBody() );

    $usersList = "";
    foreach ($users as $user) {
        $usersList .= "<li>{$user->name}".($user->email ? '✅' : '')."</li>";
    }

    echo "<ul>{$usersList}</ul>";

} catch (GuzzleHttp\Exception\BadResponseException $e) {
    echo "Unable to retrieve access token.";
}

```

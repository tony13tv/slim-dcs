<?php
session_start();
require_once 'vendor/autoload.php';

$app = new \Slim\Slim(array(
    'view' => new \Slim\Views\Smarty()
));

$host = Config::inst()->get('database.host');
$port = Config::inst()->get('database.port');
$dbname = Config::inst()->get('database.dbname');
$username = Config::inst()->get('database.username');
$password = Config::inst()->get('database.password');

$pdo = new PDO("mysql:host=$host;port=$port;dbname=$dbname", $username, $password);
$db = new NotORM($pdo);

$app->hook('slim.before.dispatch', function () use ($app) {
    if (strpos($app->request()->getPathInfo(), '/admin') === 0) {
        if (!isset($_SESSION['user'])) {
            $app->redirectTo('login');
        } else {
            $app->view->appendData(array('session' => true, 'baseUrl' => 'http://localhost/slim-dcs/'));
        }
    }
});

require_once 'security.php';

$app->group('/admin', function () use ($app, $db) {
    $app->get('/:table', function ($table) use ($app, $db) {
        $$table = $db->$table();
        $app->render("admin/{$table}_index.tpl", compact("$table"));
    });
});

$app->group('/api', function () use ($app, $db) {
    $app->get('/:table', function ($table) use ($app, $db) {
        $data = $db->$table();
        $app->response->header('Content-Type', 'text/json');
        $app->response->body(json_encode($data->jsonSerialize()));
    });

    $app->post('/:table', function ($table) use ($db) {
        $$table = $db->$table();
    });

    $app->put('/:table/:id', function ($table, $id) use ($db) {
        $$table = $db->$table();
    });

    $app->delete('/:table/:id', function ($table, $id) use ($db) {
        $$table = $db->$table();
    });
});

$app->run();
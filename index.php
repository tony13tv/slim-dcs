<?php
session_start();
require_once 'vendor/autoload.php';

// Creacion de la aplicación
$app = new \Slim\Slim(array(
    // Usar el motor de plantillas
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
    $app->view->appendData(array('baseUrl' => Config::inst()->get('Director.base_url')));
    if (strpos($app->request()->getPathInfo(), '/admin') === 0) {
        if (!isset($_SESSION['user'])) {
            $app->redirectTo('login');
        } else {
            $app->view->appendData(array('session' => true));
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

require_once 'code/api.php';
require_once 'code/dataTable.php';

$app->run();
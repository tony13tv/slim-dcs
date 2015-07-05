<?php
$app->group('/api', function () use ($app, $db) {
    $app->get('/:table', function ($table) use ($app, $db) {
        $data = $db->$table();
        $app->response->header('Content-Type', 'text/json');
        $app->response->body(json_encode($data->jsonSerialize()));
    });

    $app->post('/:table', function ($table) use ($app, $db) {
        $data = $db->$table();
        $app->response->header('Content-Type', 'text/json');
        $app->response->body(json_encode($data->jsonSerialize()));
    });

    $app->put('/:table/:id', function ($table, $id) use ($db) {
        $$table = $db->$table();
    });

    $app->delete('/:table/:id', function ($table, $id) use ($db) {
        $$table = $db->$table();
    });
});
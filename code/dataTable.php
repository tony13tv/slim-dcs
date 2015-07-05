<?php
$app->group('/dataTable', function () use ($app, $db) {
    $app->get('/:table', function ($table) use ($app, $db) {
        $data = $db->$table();
        $dataFiltered = $db->$table();
        if (isset($_GET['columns'])) {
            foreach ($_GET['columns'] as $column) {
                if (!empty($column['search']['value']))
                    $dataFiltered = $dataFiltered->or("{$column['data']} LIKE '%{$column['search']['value']}%'");
            }
        }
        $response = array(
            'draw' => $_GET['draw'],
            'recordsTotal' => $data->count(),
            'recordsFiltered' => $dataFiltered->count(),
            'swl' => $dataFiltered->__toString(),
            'data' => $dataFiltered->jsonSerialize()
        );
        $app->response->header('Content-Type', 'text/json');
        $app->response->body(json_encode($response));
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
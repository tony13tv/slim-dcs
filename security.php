<?php
$app->group('/security', function () use ($app, $db) {
    $app->get('/login', function () use ($app) {
        $app->render('admin/security.tpl');
    })->setName('login');

    $app->post('/login', function () use ($app, $db) {
        $usuario = $db->usuario()->where(array(
            'usuario' => $app->request->post('username'),
            'contrasena' => md5($app->request->post('password'))
        ));
        if (count($usuario) == 1) {
            $_SESSION['user'] = $usuario[0]['usuario'];
            $app->redirect('/slim-dcs/admin/pacientes');
        }
        $app->render('admin/security.tpl');
    });

    $app->get('/logout', function () use ($app) {
        unset($_SESSION['user']);
        $app->redirectTo('login');
    })->setName('logout');
});
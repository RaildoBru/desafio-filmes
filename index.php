<?php

require __DIR__ . "/src/Route.php";

$requestUri = explode('?',$_SERVER['REQUEST_URI'])[0];

$params = $_GET;

$router = new Router;

$response = $router->run($requestUri, $params);

echo json_encode($response);

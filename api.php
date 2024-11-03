<?php

require __DIR__ . "/src/Route.php";

$requestUri = $_SERVER['REQUEST_URI'];

$teste = $_GET;

$router = new Router;

$response = $router->run($requestUri);

print_r($response);


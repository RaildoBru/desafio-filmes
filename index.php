<?php

require_once __DIR__ . "/src/Route.php";
require_once __DIR__ . "/src/log/log.php";

$requestUri = explode('?',$_SERVER['REQUEST_URI'])[0];

$logUrl = $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];

(new log())::save($logUrl);

$params = $_GET;

$router = new Router;

$response = $router->run($requestUri, $params);

echo json_encode($response);

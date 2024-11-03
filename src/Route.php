<?php

require __DIR__ . "/RouteSwitch.php";

class Router extends RouteSwitch
{
    public function run(string $requestUri, $params = '')
    {
        $route = explode('/',substr($requestUri, 1));

        if (empty($route[0])) {
            return $this->films('');
        }

        if(!empty($route[1])) {
            $id = $route[1];
            $method = $route[0];
            return $this->$method($id);
        }
        
        $method = $route[0];
        return $this->$method($params);
    }
}
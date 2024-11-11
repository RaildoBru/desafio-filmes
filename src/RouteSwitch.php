<?php
require __DIR__ . '/controllers/ApiFilmsController.php';
require __DIR__ . '/log/log.php';

abstract class RouteSwitch
{
    protected function films($id = '')
    {
        $films = new ApiFilmsController;
        if(!empty($id)){
            return $films->getFilmsDetails($id);
        }

        return $films->getFilms();
    }

    protected function character($params = '')
    {
        $character = new ApiFilmsController;
        
        return $character->getcharacter($params);
        
    }

    protected function log()
    {
        $log = new log;
        return $log->getlog();
    }
    
    public function __call($name, $arguments)
    {
        http_response_code(404);
        echo 'Pagina nao encotrada';
    }
}
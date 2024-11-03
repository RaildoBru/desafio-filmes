<?php
require __DIR__ . '/controllers/ApiFilmsController.php';

abstract class RouteSwitch
{
    protected function home()
    {
        return '???';
        // /require __DIR__ . '/pages/home.html';
    }

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
    
    public function __call($name, $arguments)
    {
        http_response_code(404);
        echo 'Pagina nao encotrada';
    }
}
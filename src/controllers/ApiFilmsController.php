<?php
require __DIR__ . '/../external/CurlRequest.php';
require __DIR__ . '/../models/filmsModel.php';
require __DIR__ . '/../models/charactersModel.php';
require __DIR__ . '/../models/FilmsCharactersModel.php';

class ApiFilmsController{
    const URL_API = 'https://swapi.dev/api/';

    public function getFilms() {
        $request = new CurlRequest;
        $url = self::URL_API . "films/";
        //buscar os filmes disponiveis
        return $request->exec($url);
    }

    public function getFilmsDetails($id){
        $idFilms = ( empty($id)? '' : $id);
        $detailsFilms = new FilmsModel();
        $result = $detailsFilms->query($id);

        //Buscar o relacionamento entre filme e personagem
        if(!empty($result)){
            $result[0]['characters'] = $this->getFilmsCharacter($result[0]['id']);
            return $result[0];
        }
        //Busca os detalhes do filme escolhido
        $request = new CurlRequest;
        $url = self::URL_API . "films/" . $idFilms;

        $response = $request->exec($url);
        $saveResult = $response;
        unset(
            $saveResult['characters'],
            $saveResult["created"],
            $saveResult["edited"],
            $saveResult["planets"],
            $saveResult["starships"],
            $saveResult["vehicles"],
            $saveResult["species"],
        );

        $response['id'] = $detailsFilms->create($id,$saveResult);
        return $response;
    }

    public function getCharacter($params = '') {

        $character = new CharactersModels();
        $filmsCharacter = new FilmsCharactersModel();
        
        $urlCharacters = $params['characters'];

        preg_match('/(\d+)/',$urlCharacters,$match);
        $idfilm = $params['film'];
        //verifica se o personagem ja existe na tabela
        $resultQuery = $character->query($match[0]);

        if(!empty($resultQuery)){
            //se existir faz o relacionamento entre o filme e o pesonagem
            $filmsCharacter->create($idfilm,$resultQuery[0]['id']);
            return $resultQuery[0]['name'];
        }
        
        //busca o personagem na api
        $request = new CurlRequest;
        $response = $request->exec($urlCharacters);


        unset(
            $response["homeworld"],
            $response["films"],
            $response["species"] ,
            $response["vehicles"] ,
            $response["starships"],
            $response["created"],
            $response["edited"]
        );
        //Salva o personagem na tabela e faz o relacionamento entre personagem e filme
        $idCharacter = $character->create($match[0],$response);
        $filmsCharacter->create($idfilm,$idCharacter);

        return $response['name'];
    }

    private function getFilmsCharacter($id)
    {
        $filmsCharacter = new FilmsCharactersModel();
        return $filmsCharacter->query($id);
    }
}
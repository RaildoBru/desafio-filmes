<?php
require_once 'Connection.php';

class FilmsCharactersModel extends Connection {
    const TABLE_FILMS = 'films';
    const TABLE_CHARACTERS = 'characters';
    const TABLE_FILMSCHARACTERS = 'filmsCharacters';

    private $films;
    private $characters;
    private $filmsCharacters;

    public function __construct() {
        parent::__construct();
        $this->films = self::TABLE_FILMS;
        $this->characters = self::TABLE_CHARACTERS;
        $this->filmsCharacters = self::TABLE_FILMSCHARACTERS;
    }
    
    public function query($id) {

        $sql = "SELECT (`characters`.name) FROM {$this->films} 
        join {$this->filmsCharacters} on films.id = filmsCharacters.id_films
        JOIN  {$this->characters} on `characters`.id = filmsCharacters.id_characters
        WHERE films.id = $id";
        $stmt = $this->connection->prepare($sql);

        try {
            $stmt->execute();
            return $stmt->fetchAll();
            
        } catch (PDOException $e) {
            echo "Erro ao buscar: " . $e->getMessage();
            return false;
        }
    }

    public function create($idFilm, $idCharacter){

        $data['id_films'] = $idFilm;
        $data['id_characters'] = $idCharacter;

        $columns = implode(", ", array_keys($data));
        $placeholders = ":" . implode(", :", array_keys($data));

        $sql = "INSERT INTO {$this->filmsCharacters} ($columns) VALUES ($placeholders)";

        $stmt = $this->connection->prepare($sql);
        try {
            $stmt->execute($data);
            return $this->connection->lastInsertId(); // Retorna o ID do último registro inserido
        } catch (PDOException $e) {
            echo "Erro ao inserir: " . $e->getMessage();
            return false;
        }
    }    
}


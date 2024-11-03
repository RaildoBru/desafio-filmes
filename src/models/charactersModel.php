<?php
require_once 'Connection.php';

class CharactersModels extends Connection {

    const TABLE_CHARACTERS = 'characters';
    private $characters;
    public function __construct() {
        parent::__construct();
        $this->characters = self::TABLE_CHARACTERS;
    }
    
    public function query($id = "") {
        $sql = "SELECT * FROM {$this->characters}";

        if (!empty($id)) {
            $sql .= " WHERE id_character = $id";
        }

        $stmt = $this->connection->prepare($sql);

        try {
            $stmt->execute();
            return $stmt->fetchAll();
            
        } catch (PDOException $e) {
            echo "Erro ao buscar: " . $e->getMessage();
            return false;
        }
    }

    public function create($id, $data){

        $data['id_character'] = $id;
        $columns = implode(", ", array_keys($data));
        $placeholders = ":" . implode(", :", array_keys($data));

        $sql = "INSERT INTO {$this->characters} ($columns) VALUES ($placeholders)";

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


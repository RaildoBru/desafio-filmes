<?php
require_once 'Connection.php';
//require_once __DIR__ . '/../models/Connection.php';

class FilmsModel extends Connection {
    const TABLE_FILMS = 'films';
    private $films;

    public function __construct() {
        parent::__construct();
        $this->films = self::TABLE_FILMS;
    }

    public function query($id = "") {
        $sql = "SELECT * FROM {$this->films}";

        if (!empty($id)) {
            $sql .= " WHERE id_film = $id";
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
  
        $data["id_film"] = $id;
        $columns = implode(", ", array_keys($data));
        $placeholders = ":" . implode(", :", array_keys($data));
        
        $sql = "INSERT INTO {$this->films} ($columns) VALUES ($placeholders)";
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

/*
*require_once 'DatabaseConnection.php';

class Model extends DatabaseConnection {
    private $table;

    // Método para ler registros
    public function read($conditions = []) {
        $sql = "SELECT * FROM {$this->table}";
        if (!empty($conditions)) {
            $clauses = [];
            foreach ($conditions as $column => $value) {
                $clauses[] = "$column = :$column";
            }
            $sql .= " WHERE " . implode(" AND ", $clauses);
        }

        $stmt = $this->connection->prepare($sql);
        try {
            $stmt->execute($conditions);
            return $stmt->fetchAll();
        } catch (PDOException $e) {
            echo "Erro ao buscar: " . $e->getMessage();
            return false;
        }
    }

    // Método para atualizar um registro
    public function update($data, $conditions) {
        $updates = [];
        foreach ($data as $column => $value) {
            $updates[] = "$column = :$column";
        }

        $clauses = [];
        foreach ($conditions as $column => $value) {
            $clauses[] = "$column = :$column";
        }

        $sql = "UPDATE {$this->table} SET " . implode(", ", $updates) . " WHERE " . implode(" AND ", $clauses);
        $stmt = $this->connection->prepare($sql);
        
        try {
            $stmt->execute(array_merge($data, $conditions));
            return $stmt->rowCount(); // Retorna o número de registros atualizados
        } catch (PDOException $e) {
            echo "Erro ao atualizar: " . $e->getMessage();
            return false;
        }
    }

    // Método para deletar um registro
    public function delete($conditions) {
        $clauses = [];
        foreach ($conditions as $column => $value) {
            $clauses[] = "$column = :$column";
        }

        $sql = "DELETE FROM {$this->table} WHERE " . implode(" AND ", $clauses);
        $stmt = $this->connection->prepare($sql);

        try {
            $stmt->execute($conditions);
            return $stmt->rowCount(); // Retorna o número de registros deletados
        } catch (PDOException $e) {
            echo "Erro ao deletar: " . $e->getMessage();
            return false;
        }
    }
}
*/
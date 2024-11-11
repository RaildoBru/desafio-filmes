<?php
require_once 'Connection.php';

class LogsModel extends Connection {
    const TABLE_LOGS = 'log';
    private $logs;

    public function __construct() {
        parent::__construct();
        $this->logs = self::TABLE_LOGS;
    }

    public function query($id = "") {
        $sql = "SELECT * FROM {$this->logs}";

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

    public function save($data){
  
        $columns = implode(", ", array_keys($data));
        $placeholders = ":" . implode(", :", array_keys($data));
        
        $sql = "INSERT INTO {$this->logs} ($columns) VALUES ($placeholders)";

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

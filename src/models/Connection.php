<?php

class Connection {
    
    public $connection;
    private $servername = "localhost";
    private $username = "root";
    private $password = "1234";
    private $dbname = "public";

    public function __construct(){
        
        try {
            $this->connection = new PDO("mysql:host={$this->servername};dbname={$this->dbname};", $this->username, $this->password);
            $this->connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $this->connection->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);

        } catch (PDOException $e) {
            echo "Erro na conexão: " . $e->getMessage();
        }
    }

    public function getConnection(){
        return $this->connection;
    }

    public function closeConnection() {
        $this->connection = null;
    }
}

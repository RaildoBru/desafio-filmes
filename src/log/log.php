<?php
require_once __DIR__ . '/../models/LogsModel.php';

class Log {
    public static function save($logUrl){
        $logs = new LogsModel();
        $data = [
            "url" => $logUrl,
            "data_hora" => date("Y-m-d H:i:s")
        ];
        $logs->save($data);
    }

    public function getLog(){
        $logs = new LogsModel();
        return $logs->query();
    }
}
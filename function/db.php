<?php
    class Database {
        private $host = "localhost";
        private $user = "root";
        private $pass = "";
        private $db = "amazon_work";

        protected function connect(){
            $connection = mysqli_connect($this->host, $this->user, $this->pass, $this->db);
            return $connection;
        }
    }
?>
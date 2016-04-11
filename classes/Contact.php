<?php

class Contact {

    public function __construct() {

        global $db, $addressPath;

        $this->db = &$db;
        $this->addressPath = &$addressPath;

    }


    public function getContacts(){

        try {

            $sql = "SELECT * FROM contact";

            $stmt = $this->db->prepare($sql);
            $stmt->execute();

            $result = array();

            while($res = $stmt->fetch(PDO::FETCH_ASSOC)){
                $result[] = $res;
            }

            return $result;

        }  catch (PDOException $e) {
            echo 'ERROR: '. $e->getMessage();
        }


    }


}

 ?>

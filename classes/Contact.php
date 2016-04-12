<?php

class Contact {

    public $contact_id;
    public $name;
    public $email;
    public $phone;
    public $cellphone;
    public $note;

    public function __construct() {

        global $db, $addressPath;

        $this->db = &$db;
        $this->addressPath = &$addressPath;

    }

    public function getSingleContact(){
      try {

          $sql = "SELECT * FROM contact WHERE contact_id=:contact_id";
          $st = $this->db->prepare($sql);
          $id = $this->contact_id;
          $st->bindParam(':contact_id', $id, PDO::PARAM_INT);
          $st->execute();
          $result = $st->fetch(PDO::FETCH_ASSOC);

          return $result;

      } catch (PDOException $e) {
          echo 'ERROR' . $e->getMessage();
      }
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

    public function setContact(){

      try {

          $sql = "INSERT INTO
                    contact (name,email,phone,cellphone,note)
                  VALUES
                    ('" . $this->name . "','" . $this->email . "','" . $this->phone . "','" . $this->cellphone . "','" . $this->note . "')";


          $this->db->exec($sql);
          $this->contact_id = $this->db->lastInsertId();
          return true;

      } catch (PDOException $e) {
          echo '<br>ERRO: ' . $e->getMessage();
      }

    }

    public function updateContact(){

      try {

          $sql = "UPDATE contact SET
                    name='" . $this->name . "',
                    email='" . $this->email . "',
                    phone='" . $this->phone . "',
                    cellphone='" . $this->cellphone . "',
                    note='" . $this->note . "'
                  WHERE contact_id='".$this->contact_id."'
                  ";

          $this->db->exec($sql);
          return true;

      } catch (PDOException $e) {
          echo '<br>ERRO: ' . $e->getMessage();
      }

    }





}

 ?>

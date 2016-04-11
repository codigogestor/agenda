<?php

class User {

  public $user_id;
  public $status;
  public $name;
  public $email;
  public $username;
  public $password;

  public function __construct() {

      global $db, $addressPath;

      $this->db = &$db;
      $this->addressPath = &$addressPath;

  }

  public function authUser(){

    try {

      $sql = "SELECT user_id,username,password,status FROM
                user
              WHERE
                (username=:username OR email=:username)
              AND
                password=:password
              AND
                status=:status";

      $st = $this->db->prepare($sql);
      $st->bindParam(':username', $this->username, PDO::PARAM_STR);
      $st->bindParam(':password', $this->password, PDO::PARAM_STR);
      $st->bindValue(':status', 1, PDO::PARAM_INT);
      $st->execute();

      $result = $st->fetch(PDO::FETCH_ASSOC);
      return $result;

    } catch (PDOException $e) {
      echo 'ERROR: ' . $e->getMessage();
    }

  }

  public function getUserData(){

    try {

      $sql = "SELECT * FROM
                user
              WHERE
                user_id=:user_id";

      $st = $this->db->prepare($sql);
      $st->bindParam(':user_id', $this->user_id, PDO::PARAM_INT);
      $st->execute();

      $result = $st->fetch(PDO::FETCH_ASSOC);
      return $result;


    } catch (PDOException $e) {
      echo 'ERROR: ' . $e->getMessage();
    }

  }
}

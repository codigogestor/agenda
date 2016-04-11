<?php

session_start();

require_once 'utilities/functions/global-functions.php';


#TEMPLATE SMARTY
$template = new Smarty;
$template->template_dir     = 'views';
$template->compile_dir      = 'utilities/cache';
$template->config_dir       = 'utilities/cache';
$template->cache_dir        = 'utilities/cache';
$template->error_reporting  = E_ALL & ~E_NOTICE;

#BANCO DE DADOS
try {
  $db = new PDO("mysql:host=$dbhost;dbname=$dbname;charset=$dbcharset", $dbuser, $dbpassword );
  $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
  echo 'ERROR: ' . $e->getMessage();
}




 ?>

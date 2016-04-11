<?php

function agenda_autoload ($class_name) {

  $dir_classes = array(
      'classes/',
      'classes/smarty/'
  );

  foreach($dir_classes as $dir){
    if(file_exists($dir . $class_name . '.php')){
        include( $dir . $class_name . ".php");
    }
  }


}
spl_autoload_register("agenda_autoload");


function writeJsonOutput($jsonData, $exitAfterOutput = true) {
  header("Content-type: application/json; charset=utf-8", true);
  echo json_encode($jsonData);
  if ($exitAfterOutput)
  exit;
  return true;
}

?>

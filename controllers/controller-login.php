<?php

$template->assign('content','form-login');

if(isset($_POST['formRequest'])) {

  $login = new User();

  $login->username = trim($_POST['email']);
  $login->password = trim(md5($_POST['password']));
  
  $loginData = $login->authUser();

  if($loginData){

      $_SESSION['user_id'] = $loginData['user_id'];

      $result  = array(
          'status'=>'success'
      );

  } else {

      $result = array(
          'status' => 'error',
          'message' => 'Usuário não encontrado.'
      );

  }

  writeJsonOutput($result);
}

 ?>

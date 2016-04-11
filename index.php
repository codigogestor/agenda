<?php

require_once 'config.php';

#URL BASE DO SISTEMA
$template->assign('baseUrl', $baseUrl);

#DIRETÓRIO BASE
$template->assign('basePath',$basePath);

#CONTROLE DE ENDEREÇO
$addressPath = explode('/', $_GET['url']);
$template->assign('addressPath',$addressPath);

#CONTROLE DE SESSÃO
if(empty($addressPath[0])){
  header('location:' . $basePath . 'login');
}
if($addressPath[0] !== 'login' && !$_SESSION['user_id']) {
  header('location:' . $basePath . 'login');
}
if($addressPath[0] === 'login' && isset($_SESSION['user_id'])) {
  header('location:' . $basePath . 'dashboard');
}
if($addressPath[0] !== 'login' && isset($_SESSION['user_id'])) {
  $user = new User();
  $user->user_id = $_SESSION['user_id'];
  $currentUser = $user->getUserData();
  $template->assign('currentUser',$currentUser);
}

#CARREGAMENTO DO MÓDULO
$template->assign('module',$addressPath[0]);

#CARREGAMENTO DO CONTROLADOR
require_once 'controllers/controller-' . $addressPath[0] . '.php';

#INICIALIZA O TEMPLATE
$template->display('index.tpl');

?>

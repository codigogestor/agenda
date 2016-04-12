<?php

if(isset($_GET['list'])){

  $contact = new Contact();

  $list['records'] = $contact->getContacts();

  writeJsonOutput($list);

}

if(isset($_GET['add'])){

  $postdata = file_get_contents("php://input");
  $request = json_decode($postdata);

  $insert = new Contact();

  $insert->name = $request->value->name;
  $insert->email = $request->value->email;
  $insert->phone = $request->value->phone;
  $insert->cellphone = $request->value->cellphone;
  $insert->note = $request->value->note;

  if(intval($request->value->contact_id) > 0){

      $insert->contact_id = intval($request->value->contact_id);

      $insert->updateContact();

  } else {

      $insert->setContact();

  }

  if($insert->contact_id > 0){

    $list = array('status'=>'success','id'=>$insert->contact_id, 'message'=>'Alterações salvas com sucesso.');

  } else {

    $list = array('status'=>'error','message'=>'Ocorreu um erro ao salvar seus dados.');

  }

  writeJsonOutput($list);

}

if(isset($_POST['removeContact'])){

  $delete = new Contact();
  $delete->contact_id = $_POST['removeContact'];
  $delete->delete();

  $result = array('status'=>'success', 'message'=>'Contato Excluído com sucesso');
  writeJsonOutput($result);
}

$template->assign('content','contact');

if($addressPath[1] == 'edit' && intval($addressPath[2])){

  $contact = new Contact();

  $contact->contact_id = intval($addressPath[2]);

  $data = $contact->getSingleContact();

  $template->assign('data',$data);

}

?>

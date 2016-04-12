<?php

if(isset($_GET['list'])){

  $contact = new Contact();
  $list['records'] = $contact->getContacts();

  writeJsonOutput($list);
}


/*if(isset($_GET['edit'])){

  $id = $_GET['edit'];

  $contact = new Contact();
  $contact->contact_id = $id;
  $data = $contact->getSingleContact();

  $register= array(
    'records' => array(
      'data'=>$data,
    )
  );

  writeJsonOutput($register);
}*/


if(isset($_GET['add'])){

  $postdata = file_get_contents("php://input");
  $request = json_decode($postdata);

  $insert = new Contact();

  $insert->name = $request->value->name;
  $insert->email = $request->value->email;
  $insert->phone = $request->value->phone;
  $insert->cellphone = $request->value->cellphone;
  $insert->note = $request->value->note;

  $insert->setContact();

  if($insert->contact_id > 0){
    $list = array('status'=>'success','message'=>'Alterações salvas com sucesso.');
  } else {
    $list = array('status'=>'error','message'=>'Ocorreu um erro ao salvar seus dados.');
  }
  writeJsonOutput($list);

}

$template->assign('content','contact');





?>

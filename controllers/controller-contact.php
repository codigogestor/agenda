<?php
if(isset($_GET['list'])){

    $contact = new Contact();
    $list['records'] = $contact->getContacts();


    $jsonData = array(
        'records' => array(
            0 => array(
                'Name' => 'Samuel Quaresma',
                'Country' => 'Brasil'
            ),
            1 => array(
                'Name' => 'Paula Mandruzatp',
                'Country' => 'EUA'
            )
        )
    );

    writeJsonOutput($list);

}

$template->assign('content','contact');




 ?>

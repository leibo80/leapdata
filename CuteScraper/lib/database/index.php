<?php
require_once 'mysql.class.php';
$db = new mysql('localhost', 'root', '', "db_58");

 //select    ��
 //$db->select("user", "*", "username = 'system'");
 //$result = $db->fetchArray(MYSQL_ASSOC);
 //print_r($result);
 //dump($db->printMessage());

 //insert    ��
$userInfo = array('subject'=>'nongjiale', 
'company_name' => 'pacific ltd.co',
'contactor_name'=>'wangzong', 
'tel_num'=>'1390000000',
'address'=>'xian',
'qq_num'=>'12345');
$db->insert("tb_njl", $userInfo);


 //update    ��
 //$userInfo = array('password' => md5("123456"));
 //$db->update("user", $userInfo, "id = 2");
 //dump($db->printMessage());

 //delete    ɾ
 //$db->delete("user", "id = 1");
 //dump($db->printMessage());

 //findAll   ��ѯȫ��
 $db->findAll("user");
 $result = $db->fetchArray();
 dump($result);

?>

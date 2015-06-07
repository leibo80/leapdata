<?php

include("../lib/scraper/LIB_http.php");

$target = "http://xa.58.com/zhoubianyou/";
$ref = "http://xa.58.com";

$data_array = array();
$data_array["key"] = "农家乐";

$return_array = http_get_form($target, $ref, $data_array);

//echo "FILE CONTENTS \n";
//var_dump($return_header_array['FILE']);
var_dump($return_array['FILE']);

//echo "ERRORS \n";
//var_dump($return_header_array['ERROR']);

//echo "STATUS \n";
//var_dump($return_header_array['STATUS']);

?>
<?php

include("../lib/scraper/LIB_http.php");

$target = "http://xa.58.com/zhoubianyou/";
$ref = "http://xa.58.com";

#请求标头信息
//$return_header_array = http_get_withheader($target, $ref);
$return_array = http_get($target, $ref);

//echo "FILE CONTENTS \n";
//var_dump($return_header_array['FILE']);
var_dump($return_array['FILE']);

//echo "ERRORS \n";
//var_dump($return_header_array['ERROR']);

//echo "STATUS \n";
//var_dump($return_header_array['STATUS']);

?>
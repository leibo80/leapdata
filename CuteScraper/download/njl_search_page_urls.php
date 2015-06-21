<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<?php
/*
include("../lib/scraper/LIB_http.php");
include("../lib/scraper/LIB_parse.php");

$target = "http://xa.58.com/zhoubianyou/";
$ref = "http://xa.58.com";
$page_base = "http://xa.58.com";



// 查询农家乐
$data_array = array();
$data_array["key"] = "农家乐";

$return_array = http_get_form($target, $ref, $data_array);
*/
require_once(dirname(__FILE__) . "/../config.php");
require_once(Root_Path . "/lib/xa_58_query.php" );

error_reporting( E_ALL&~E_NOTICE );

$return_result = xa_58_get($target="http://xa.58.com/zhoubianyou/", 
                                         $ref="http://xa.58.com", 
                                         $page_base="http://xa.58.com", 
                                         $key="农家乐");
										 
$pager_array = return_between($return_result, '<div class="pager"', "/div>", EXCL);
$weekend_joy_page_array = parse_array($pager_array, "<a", "/a>");
//clear_njl_search_page_url();
foreach($weekend_joy_page_array as $weekend_joy_page)
{
	$weekend_joy_page_url = get_attribute($weekend_joy_page, "href");
	$absolute_url = resolve_address($weekend_joy_page_url, $page_base);
	$result = add_njl_search_page_url($absolute_url);
}
echo "Execution Success! <br />";
?>
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
										 
//var_dump($return_result);

$pager_array = return_between($return_result, '<div class="pager"', "/div>", EXCL);
$weekend_joy_page_array = parse_array($pager_array, "<a", "/a>");
$downloaded_link_array = array();
foreach($weekend_joy_page_array as $weekend_joy_page)
{
	$weekend_joy_page_url = get_attribute($weekend_joy_page, "href");
	$absolute_url = resolve_address($weekend_joy_page_url, $page_base);
	echo $absolute_url . '<br />';
	//$downloaded_link_array[] = http_get($absolute_url, $ref);
}
//var_dump($downloaded_link_array);

$downloaded_table_row_unit_array = array();

foreach($downloaded_link_array as $downloaded_link)
{
	if(strpos($status_code_array[$downloaded_link['STATUS']['http_code']], "OK")!==false)
	{
		$downloaded_content = $downloaded_link['FILE'];
		$downloaded_content = remove($downloaded_content, "<!--", "-->");
		$downloaded_content = remove($downloaded_content, "<script", "/script>");	
		$downloaded_unit_array = parse_array($downloaded_content, 
		                                                   '<table class="small-tbimg"', 
		                                                   '</table>');
		foreach($downloaded_unit_array as $downloaded_unit)
		{
			$tr_unit_array = parse_array($downloaded_unit, 
		                                                   '<tr logr=', 
		                                                   '</tr>');
		    foreach($tr_unit_array as $tr_unit)
			{
				//$downloaded_table_row_unit_array[] = $tr_unit;
				$cur_tr_unit = remove($tr_unit, '<td class="img">', '</td>');
				//$cur_tr_unit = remove($cur_tr_unit, "<a", "/a>");
				$cur_tr_unit = remove($cur_tr_unit, "<img", ">");
				$cur_tr_unit = remove($cur_tr_unit, "<section", "/section>");
				$downloaded_table_row_unit_array[] = $cur_tr_unit;
			}
		}
	}
}

echo"<br />";
echo strval(count($downloaded_table_row_unit_array));
echo "<br />";
echo '<table align="left" style="border:1px solid #F00;width=100%">';
foreach($downloaded_table_row_unit_array as $downloaded_table_row_unit)
{
	echo "<tr>";
	$table_row_unit_raw = remove($downloaded_table_row_unit, "<a href='javascript:;'", "/a>");
	$table_row_unit_raw = remove($table_row_unit_raw, "<span", "/span>");
	$table_row_unit_raw = remove($table_row_unit_raw, "<b", "/b>");
	$table_row_unit_introduction = return_between($table_row_unit_raw, '<td class="t">', '</td>', EXCL);
	
	$table_row_unit_introduction_array = array();
	$table_row_unit_introduction_array = parse_array($table_row_unit_introduction, "<a", "/a>");
	$i = 1;
	foreach($table_row_unit_introduction_array as $table_row_unit_introduction_unit)
	{
	    if($i==1)
		{
			$desctiption_array= array();
			$description_url = "";
			echo '<td style="border 1px;">';
			//echo get_weekend_joy_description($table_row_unit_introduction_unit);
			echo $table_row_unit_introduction_unit;
			echo '</td>';
		}	
        else	
	    {
	    	echo '<td style="border 1px;">' . $table_row_unit_introduction_unit . '</td>';
		}
		
		$i++;
	}
	
	for($i = count($table_row_unit_introduction_array); $i < 2; $i++)
	{
		echo '<td style="border 1px;"></td>';
	}
	
	$table_row_unit_tel = return_between($table_row_unit_raw, '<p class="jumpDiv_tel">', '</p>', EXCL);
	$table_row_unit_tel = (0==strlen($table_row_unit_tel)) ? 
	    return_between($table_row_unit_raw, '<div class="jumpDiv_tel">', '</div>', EXCL) : $table_row_unit_tel;
	$table_row_unit_tel = remove($table_row_unit_tel, '<span class="guishudi">', '</span>');
	echo "<td>" . $table_row_unit_tel . "</td>";
	echo "</tr>";
	
	$i++;
}

echo "</table>";

?>
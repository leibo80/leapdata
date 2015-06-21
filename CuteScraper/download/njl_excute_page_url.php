<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<?php
require_once(dirname(__FILE__) . "/../config.php");
require_once(Root_Path . "/lib/xa_58_query.php" );
error_reporting( E_ALL&~E_NOTICE );

$page_url_result = get_njl_search_page_top_url();
if( isset($page_url_result) && (1==count($page_url_result)) )
{
	$id = $page_url_result[0]['id'];
	$absolute_url = $page_url_result[0]['url'];
	$get_valid_table_unit_array = array();
	$get_html = get_page_html($absolute_url, $ref);
	
	if($get_html!==false)
	{
		$get_html = remove($get_html, "<!--", "-->");
		$get_html = remove($get_html, "<script", "/script>");
		$get_valid_table_array = parse_array($get_html, 
		                                     '<table class="small-tbimg"', 
		                                     '</table>');
	    foreach($get_valid_table_array as $get_valid_table)
	    {
	    	$get_valid_table_unit_array[] = $get_valid_table;
	    }
	}
	
	$get_valid_tr_unit_array = array();
	foreach($get_valid_table_unit_array as $get_valid_table_unit)
	{
		$tr_unit_array = parse_array($get_valid_table_unit, 
		                             '<tr logr=', 
		                             '/tr>');
		foreach($tr_unit_array as $tr_unit)
	    {
			$current_tr_unit = remove($tr_unit, '<td class="img">', '</td>');
			$current_tr_unit = remove($current_tr_unit, "<img", ">");
			$current_tr_unit = remove($current_tr_unit, "<section", "/section>");
			$get_valid_tr_unit_array[] = $current_tr_unit;
		}		
	}
		
    $href_link_array = array();
	foreach($get_valid_tr_unit_array as $get_valid_tr_unit)
	{
		$get_href_link_from_tr_array = parse_array($get_valid_tr_unit, "<a", "/a>");
		foreach($get_href_link_from_tr_array as $get_href_link_from_tr_unit)
		{
			if(!stristr($get_href_link_from_tr_unit, 'javascript') 
			  && !stristr($get_href_link_from_tr_unit, 'order'))
			{
				$href_link_array[] = $get_href_link_from_tr_unit;
			}
		}
	}	
	
    $specific_page_url_array = array();
	foreach($href_link_array as $href_link)
    {
	    $specific_page_url = my_get_attribute($href_link, "href", "'");
		
		if(substr($specific_page_url, 0, 7)=="http://")
		{
			$specific_page_url_array[] = $specific_page_url;
		}
    }
	
	foreach($specific_page_url_array as $specific_page_url)
	{
		$result = add_njl_search_specific_page_url($specific_page_url);
		echo strval($result) . "<br />";
	}
	
	
	set_njl_search_page_accessed($id);
}
else
{
	echo "Has finished.";
}

?>
<?php
error_reporting( E_ALL&~E_NOTICE );

include(Root_Path . "/lib/scraper/LIB_http.php");
include(Root_Path . "/lib/scraper/LIB_parse.php");
include(Root_Path . "/lib/scraper/LIB_resolve_addresses.php");
include(Root_Path . "/lib/scraper/LIB_http_codes.php");

include(Root_Path . "/lib/database/mysql.class.php");

$ref = "http://xa.58.com";
$page_base = "http://xa.58.com";

/*	
	// 实例：查询农家乐
    $target = "http://xa.58.com/zhoubianyou/";
	$ref = "http://xa.58.com";
	$page_base = "http://xa.58.com";

	$key = "农家乐";
	*/ 
function xa_58_get($target, $ref, $page_base, $key) {
	$data_array = array();
	$data_array["key"] = $key;
	
	$return_array = http_get_form($target, $ref, $data_array);
	return $return_array["FILE" ];
		}

function get_weekend_joy_description($description_url_tag)
{
		$description_url_raw = str_replace('"', '##', $description_url_tag);
		$description_url = $description_url_raw;
		if(preg_match("/<a href=\'([^\']+)\'/", $description_url_raw, $description_url_array))
		{
		    $description_url = $description_url_array[1];
		}
		
		if(strlen($description_url)>0)
		{
		    $description_result = http_get($description_url, $target="http://xa.58.com/");
		    $description_box_value = "";
		    //if(!strpos($status_code_array[$description_result['STATUS']['http_code']], "OK")===false)
		    {
		        $description_result_content = $description_result["FILE"];
		        $description_box_value = return_between($description_result_content,
		            '<article class="description_con">',
		            '</article>', EXCL);
		        return $description_box_value;
		    }
		}
		return "";
}

function clear_njl_search_page_url()
{
	$db = new mysql('localhost', 'root', 'SLQ810907slq', "db_58");
    $result = $db->delete("tb_njl_search_page_urls");
    var_dump($result);
	return $result;
}

function add_njl_search_page_url($url)
{
    $db = new mysql('localhost', 'root', 'SLQ810907slq', "db_58");
    $search_page_url = array('url'=>$url);
    $result = $db->my_insert("tb_njl_search_page_urls", $search_page_url);
    
	return $result;
}

function add_njl_search_specific_page_url($url)
{
    $db = new mysql('localhost', 'root', 'SLQ810907slq', "db_58");
    $search_page_url = array('url'=>$url);
    $result = $db->my_insert("tb_njl_search_specific_urls", $search_page_url);
    
	return $result;
}

function get_njl_search_page_urls()
{
	$db = new mysql('localhost', 'root', 'SLQ810907slq', "db_58");
    $db->findAll("tb_njl_search_page_urls");
    $result = $db->fetchArray();
    // var_dump($result);
	return $result;
}

function get_njl_search_page_top_url()
{
	$db = new mysql('localhost', 'root', 'SLQ810907slq', "db_58");
    $db->query("select id, url from tb_njl_search_page_urls where accessed_flag=0 order by id asc limit 0,1");
    $result = $db->fetchArray();
    // var_dump($result);
	return $result;
}

function get_njl_search_specific_page_top_url()
{
	$db = new mysql('localhost', 'root', 'SLQ810907slq', "db_58");
    $db->query("select id, url from tb_njl_search_specific_urls where accessed_flag=0 order by id asc limit 0,1");
    $result = $db->fetchArray();
	return $result;
}

function set_njl_search_page_accessed($id)
{
	$db = new mysql('localhost', 'root', 'SLQ810907slq', "db_58");
	$update_value_array = array();
	$update_value_array['accessed_flag'] = 1;
	$condition = 'id=' . $id;
    $result = $db->my_update("tb_njl_search_page_urls", $update_value_array, $condition);
	return $result;
}

function set_njl_search_specific_page_accessed($id)
{
	$db = new mysql('localhost', 'root', 'SLQ810907slq', "db_58");
	$update_value_array = array();
	$update_value_array['accessed_flag'] = 1;
	$condition = 'id=' . $id;
    $result = $db->my_update("tb_njl_search_specific_urls", $update_value_array, $condition);
	return $result;
}


function get_page_html($abs_url, $url_ref)
{
	$http_get_html = http_get($abs_url, $url_ref);
	if(isset($http_get_html))
	{
	    return $http_get_html['FILE'];	
	}
	else
	{
		return false;
	}	
}

function format_valid_str($str)
{
	$ret = strip_tags($str);
	$ret = str_replace("\t", "", $ret);
	$ret = str_replace("&nbsp;", "", $ret);
	$ret = str_replace("\n", "", $ret);
	return $ret;
}

function add_njl_company_specific_info($url, $contact_name, $contact_phone, $contact_phone_zone, $description)
{
    $db = new mysql('localhost', 'root', 'SLQ810907slq', "db_58");
    $company_specific_info = array('url'=>$url, 'contact_name'=>$contact_name,
	                         'contact_phone'=>$contact_phone, "contact_phone_zone"=>$contact_phone_zone,
	                         'description'=>$description);
	//var_dump($company_specific_info);
    $result = $db->my_insert("tb_njl_company_specific_info", $company_specific_info);
    
	return $result;
}

?>
<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<?php
require_once(dirname(__FILE__) . "/../config.php");
require_once(Root_Path . "/lib/xa_58_query.php" );
error_reporting( E_ALL&~E_NOTICE );

$page_url_result = get_njl_search_specific_page_top_url();
if( isset($page_url_result) && (1==count($page_url_result)) )
{
	$id = $page_url_result[0]['id'];
	$absolute_url = $page_url_result[0]['url'];
	$get_valid_table_unit_array = array();
	$get_html = get_page_html($absolute_url, $ref);
	
	if($get_html!==false)
	{
		$get_description_content = return_between($get_html, '<article class="description_con">', '</article>', EXCL);
		$get_description = format_valid_str($get_description_content);
		echo '<xmp>' . $get_description . '</xmp>';
		
		$get_contact_info_array = array();
		$get_contact_name = "";
		$get_contact_phone = "";
		$get_contact_phone_zone = "";
		$get_contact_info_array = parse_array($get_html, '<div class="su_con"', '/div>');
		
		if(2==count($get_contact_info_array))      // 简要模式网页
		{
			$get_contact_name = $get_contact_info_array[0];
			$get_contact_phone = $get_contact_info_array[1];
			$get_contact_phone_zone = $get_contact_info_array[1];
			
			$get_contact_name = return_between($get_contact_name, '<a', '/a>', EXCL);
			$get_contact_name = return_between($get_contact_name, '>', '<', EXCL);
			$get_contact_name = format_valid_str($get_contact_name);
			echo '<xmp>' . $get_contact_name . '</xmp>';			
			
			$get_contact_phone = return_between($get_contact_phone, '<span id="t_phone"', '/span>', EXCL);
			$get_contact_phone = return_between($get_contact_phone, '>', '<', EXCL);
			$get_contact_phone = format_valid_str($get_contact_phone);
			echo '<xmp>' . $get_contact_phone . '</xmp>';
			
			$get_contact_phone_zone = return_between($get_contact_phone_zone, '<span class="belong"', '/span>', EXCL);
			$get_contact_phone_zone = return_between($get_contact_phone_zone, '>', '<', EXCL);
			$get_contact_phone_zone = format_valid_str($get_contact_phone_zone);
			echo '<xmp>' . $get_contact_phone_zone . '</xmp>';
		}
        else if(3==count($get_contact_info_array))  // 公司模式网页
	    {
	    	$get_contact_name = $get_contact_info_array[1];			
			$get_contact_phone = $get_contact_info_array[2];
			$get_contact_phone_zone = $get_contact_info_array[2];
			
			$get_contact_name = return_between($get_contact_name, '<a', '/a>', EXCL);
			$get_contact_name = return_between($get_contact_name, '>', '<', EXCL);
			$get_contact_name = format_valid_str($get_contact_name);
			echo '<xmp>' . $get_contact_name . '</xmp>';
			
			$get_contact_phone = return_between($get_contact_phone, '<span class="l_phone">', '</span>', EXCL);
			$get_contact_phone = format_valid_str($get_contact_phone);
			echo '<xmp>' . $get_contact_phone . '</xmp>';
			
			$get_contact_phone_zone = return_between($get_contact_phone_zone, '<span class="gsd">', '</span>', EXCL);
			$get_contact_phone_zone = format_valid_str($get_contact_phone_zone);
			echo '<xmp>' . $get_contact_phone_zone . '</xmp>';
	    }

        $result = add_njl_company_specific_info($absolute_url, $get_contact_name, 
                                                $get_contact_phone, $get_contact_phone_zone, 
                                                $get_description);
		echo $result;
	}	
	
	set_njl_search_specific_page_accessed($id);
}
else
{
	echo "Has finished.";
}

?>
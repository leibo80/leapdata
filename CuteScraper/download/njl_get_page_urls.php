<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<?php
require_once(dirname(__FILE__) . "/../config.php");
require_once(Root_Path . "/lib/xa_58_query.php" );

error_reporting( E_ALL&~E_NOTICE );

$page_url_array = get_njl_search_page_urls();
foreach($page_url_array as $page_url)
{
	echo $page_url['url'] . '<br />';
}
?>
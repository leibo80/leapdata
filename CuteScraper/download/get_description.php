<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<?php
require_once(dirname(__FILE__) . "/../config.php");
require_once(Root_Path . "/lib/xa_58_query.php" );

error_reporting( E_ALL&~E_NOTICE );

$description_url = "http://xa.58.com/zhoubianyou/22142830154634x.shtml";
echo get_weekend_joy_description($description_url);
?>
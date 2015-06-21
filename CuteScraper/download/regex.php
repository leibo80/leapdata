<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<?php
/*
// 从 URL 中取得主机名
preg_match("/^(http:\/\/)?([^\/]+)/i","http://www.jb51.net/index.html", $matches);
var_export($matches);
$host = $matches[2];
// 从主机名中取得后面两段
preg_match("/[^.\/]+.[^.\/]+$/", $host, $matches);
echo "域名为：{$matches[0]}";
*/
$abc = "<a href='http://xa.58.com/zhoubianyou/21809713794959x.shtml?psid=110802291187992532757354050' target=\"_blank\" class=\"t\">怡馨园——51出游最好选</a>";
$abc = str_replace("\"", "#", $abc);
echo "<xmp>" . $abc . "</xmp>";
echo "<br /><br />";
preg_match("/<a href=\'([^\']+)\'/i", 
                   $abc, 
                   $matches);
//var_export($matches);
echo "<br /><br />";
echo "<xmp>" . $matches[1] . "</xmp>"; 


?>
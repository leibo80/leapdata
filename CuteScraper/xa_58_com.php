<?php

echo "Download file by function file():";
echo "<br />";
$target = "http://xa.58.com/";
$downloaded_page_array = file($target);
foreach($downloaded_page_array as $downloaded_page)
{
	echo $downloaded_page;
}


?>
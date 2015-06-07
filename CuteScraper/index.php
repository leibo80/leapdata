<?php
    $target = "http://www.WebbotsSpidersScreenScrapers.com/hello_world.html";
	$file_handle = fopen($target, "r");
	
	#下载该文件
	while(!feof($file_handle))
	{
		echo fgets($file_handle, 4096);
	}
	fclose($file_handle);
?>
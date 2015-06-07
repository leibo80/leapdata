<?php 

function downfile() 
{
	$filename=realpath("resume.html"); //文件名  
	$date=date("Ymd-H:i:m");  
	Header( "Content-type:  application/octet-stream ");   
	Header( "Accept-Ranges:  bytes ");  
	Header( "Accept-Length: " .filesize($filename));  
	header( "Content-Disposition:  attachment;  filename= {$date}.doc");   
	echo file_get_contents($filename);  readfile($filename);  

}

 

?>
<?php 
	$http_referer = $_SERVER['HTTP_REFERER'];

	if(!mysql_connect('localhost','root','Kaustubh12') || !mysql_select_db("kaustubh"))
		echo "Did not connect";
	else
		//echo "connected<br>";

 ?>
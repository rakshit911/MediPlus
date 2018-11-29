<?php
	require "connect.inc.php";
	
	if(isset($_GET['contact_name']) && isset($_GET['contact_no']) &&  isset($_GET['contact_job']) && isset($_GET['contact_mgr']) && isset($_GET['contact_date']) && isset($_GET['contact_sal']) && isset($_GET['contact_comm']) && isset($_GET['contact_deptno'])){
		$contact_name = $_GET['contact_name'];
		$contact_no = (int)$_GET['contact_no'];
		$contact_job = $_GET['contact_job'];
		$contact_mgr = (int)$_GET['contact_mgr'];
		$contact_date = (int)$_GET['contact_date'];
		$contact_sal = (int)$_GET['contact_sal'];
		$contact_comm = (int)$_GET['contact_comm'];
		$contact_deptno = (int)$_GET['contact_deptno'];

		$query = "insert into EMP values('".$contact_no."','".$contact_name."','".$contact_job."','".$contact_mgr."','".$contact_date."','".$contact_sal."','".$contact_comm."','".$contact_deptno."')";
		if($query_run = mysql_query($query)){
			echo "regsitered";
			
		}
		else{
			echo "cant";
		}
	}
	else{
		echo "set all the fields";
	}
	header('Location:'.$http_referer);
 ?>

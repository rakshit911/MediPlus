<?php 
	require "connect.inc.php";
	//$bus  = $_GET["bus"];
	//echo $bus;
	$query = "select EMPNO from EMP";
	if($query_run = mysql_query($query)){
			//echo $query_run[0];
			/*while($row = mysql_fetch_assoc($query_run)){
				$ename = $row['ENAME'];
				$job = $row['JOB'];
				echo '<br>'.$ename.' works as a '.$job.'<br>';
			}*/
			$makes = array();
			while($row = mysql_fetch_array($query_run)){
				array_push($makes, $row["EMPNO"]);
			}
			//echo $makes[2];
			echo json_encode($makes);
		}
			else{
				echo "unsuccesful";
			}

 ?>
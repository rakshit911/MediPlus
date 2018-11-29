<?php
define('user','root');
define('password','passsword daalo apna');
define('host','localhost');
define('name','adpproject');
$conn = mysqli_connect(host,user,password,name)
OR die('could not connect to mysql'.mysqli_connect_error());

$disease = array();
$medicine = array();
$s1="fever";
$s2="none";
$s3="none";
$s4="none";
$s5="none";


//ASSUMPTION.... non-none entry will not come after a 'none' entry...!!!


/*$query="select name,medicines from disease where (symptom1='".$s1."' or symptom2='".$s1."' or symptom3='".$s1."' or symptom4='".$s1."' or symptom5='".$s1."') and (symptom1='".$s2."' or symptom2='".$s2."' or symptom3='".$s2."' or symptom4='".$s2."' or symptom5='".$s2."') and (symptom1='".$s3."' or symptom2='".$s3."' or symptom3='".$s3."' or symptom4='".$s3."' or symptom5='".$s3."') and (symptom1='".$s4."' or symptom2='".$s4."' or symptom3='".$s4."' or symptom4='".$s4."' or symptom5='".$s4."') and (symptom1='".$s5."' or symptom2='".$s5."' or symptom3='".$s5."' or symptom4='".$s5."' or symptom5='".$s5."')";*/

if($s1!='none' && $s2=='none' && $s3=='none' && $s4=='none' && $s5=='none')
{
	$query="select name,medicines from disease where (symptom1='".$s1."' or symptom2='".$s1."' or symptom3='".$s1."' or symptom4='".$s1."' or symptom5='".$s1."')";
}

if($s1!='none' && $s2!='none' && $s3=='none' && $s4=='none' && $s5=='none')
{
	$query="select name,medicines from disease where (symptom1='".$s1."' or symptom2='".$s1."' or symptom3='".$s1."' or symptom4='".$s1."' or symptom5='".$s1."') and (symptom1='".$s2."' or symptom2='".$s2."' or symptom3='".$s2."' or symptom4='".$s2."' or symptom5='".$s2."')";
}

if($s1!='none' && $s2!='none' && $s3!='none' && $s4=='none' && $s5=='none')
{
	$query="select name,medicines from disease where (symptom1='".$s1."' or symptom2='".$s1."' or symptom3='".$s1."' or symptom4='".$s1."' or symptom5='".$s1."') and (symptom1='".$s2."' or symptom2='".$s2."' or symptom3='".$s2."' or symptom4='".$s2."' or symptom5='".$s2."') and (symptom1='".$s3."' or symptom2='".$s3."' or symptom3='".$s3."' or symptom4='".$s3."' or symptom5='".$s3."')";
}

if($s1!='none' && $s2!='none' && $s3!='none' && $s4!='none' && $s5=='none')
{
	$query="select name,medicines from disease where (symptom1='".$s1."' or symptom2='".$s1."' or symptom3='".$s1."' or symptom4='".$s1."' or symptom5='".$s1."') and (symptom1='".$s2."' or symptom2='".$s2."' or symptom3='".$s2."' or symptom4='".$s2."' or symptom5='".$s2."') and (symptom1='".$s3."' or symptom2='".$s3."' or symptom3='".$s3."' or symptom4='".$s3."' or symptom5='".$s3."') and (symptom1='".$s4."' or symptom2='".$s4."' or symptom3='".$s4."' or symptom4='".$s4."' or symptom5='".$s4."')";
}

if($s1!='none' && $s2!='none' && $s3!='none' && $s4!='none' && $s5=='none')
{
	$query="select name,medicines from disease where (symptom1='".$s1."' or symptom2='".$s1."' or symptom3='".$s1."' or symptom4='".$s1."' or symptom5='".$s1."') and (symptom1='".$s2."' or symptom2='".$s2."' or symptom3='".$s2."' or symptom4='".$s2."' or symptom5='".$s2."') and (symptom1='".$s3."' or symptom2='".$s3."' or symptom3='".$s3."' or symptom4='".$s3."' or symptom5='".$s3."') and (symptom1='".$s4."' or symptom2='".$s4."' or symptom3='".$s4."' or symptom4='".$s4."' or symptom5='".$s4."') and (symptom1='".$s5."' or symptom2='".$s5."' or symptom3='".$s5."' or symptom4='".$s5."' or symptom5='".$s5."')";
}

$result=mysqli_query($conn,$query);
while($row = mysqli_fetch_array($result))
{
	array_push($disease, $row["name"]);
	array_push($medicine, $row["medicines"]);
	//$disease[]=$row;        ..only this also works...stores a multi-D array instead of storing in different arrays
}
echo '<pre>'; print_r($disease); echo '</pre>';
echo '<pre>'; print_r($medicine); echo '</pre>';
echo $disease[0]."<br>";
?>

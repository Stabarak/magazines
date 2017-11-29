<?php

$con=mysqli_connect('localhost','root','') or die(mysqli_connect_error());
$db=mysqli_select_db($con,'magazine') or die(mysqli_connect_error());

if(isset($_POST['userlogin']))
{
	session_start();
	if(!empty($_POST['user']))
	{
		$query=mysqli_query($con,"select * from users where uname= '$_POST[user]' and '$_POST[upass]' ");
		$row=mysqli_fetch_array($query);
		if(!empty($row['uname']) and !empty($row['pass']))
		{
			$_SESSION['id']= $row['id'];
			echo "<script>alert(\"Successfully Login, Welcome\");</script>";
			echo "<script>document.location.href='menu.html'</script>";
		}
		else
		{
			echo "<script>alert(\"Invalid User Name and Password\");</script>";
			echo "<script>document.location.href='home.html'</script>";
		}
	}
}
/*elseif(isset($_POST['adminlogin']))
{
	session_start();
	if(!empty($_POST['user']))
	{
		$query=mysqli_query($con,"select * from admin where adname= '$_POST[user]'");
		$row=mysqli_fetch_array($query);
		if(!empty($row['adname']) and !empty($row['adpass']))
		{
			$_SESSION['adname']= $row['adpass'];
			echo "<script>alert(\"Successfully Login, Welcome\");</script>";
			echo "<script>document.location.href='admin.html'</script>";
		}
		else
		{
			echo "<script>alert(\"Invalid User Name and Password\");</script>";
			echo "<script>document.location.href='home.html'</script>";
		}
	}
}*/
else
{
	echo "<script>alert(\"Try Again\");</script>";
	echo "<script>document.location.href='home.html'</script>";
}
?>
			
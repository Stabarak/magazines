<?php
session_start();

if(isset($_POST['logout']))
{
  header("Location:home.html");
}
?>
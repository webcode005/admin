<?php
session_start();
unset($_SESSION['admin']);
//unset($_SESSION['helpful']);
header("location:index.php");
 ?>
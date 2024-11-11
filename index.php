<?php 
    session_start();
	require_once 'functions.php';
	require_once 'config.php';
	define ("title", "Login");
	define ("page_name", "Login");
	if(!empty($_SESSION['admin'])){
	    header('location:dashboard.php');
	    exit();
	}
	if(isset($_POST['submit'])){
	    $email = $_POST['email'];
	    $pwd = md5($_POST['pwd']);
	    $select = $conn->query("SELECT * FROM admin WHERE email='".$email."' and pwd='".$pwd."'");
	   // echo "SELECT * FROM admin WHERE email='".$email."' and pwd='".$pwd."'";
	    if($select->num_rows>0){
	        $row = $select->fetch_array();
	       $_SESSION['admin'] = $email; 
	      
	        echo "<script>
	        window.location.href='dashboard.php';
	        </script>";
	    }
	    else{
	        echo "<script>alert('Invalid Details');</script>";
	    }
	}
?>
<!DOCTYPE html>
<html>
<head>

	<?php head();?>
	
</head>
<body style="background:grey">
	<div class="container">
	    <div class="row">
	        <div class="col-md-3"></div>
	        <div class="col-md-5 mt-5">
	            <div class="card login-box-main">
	                <div class="card-header box-title">
	                    <h3>ADMIN LOGIN</h3>
	                </div>
	                <div class="logo-sec">
	                    <img src="Ayan-Exim-India-logo.png" width="150px;">
	                </div>
	                <div class="card-body">
	                    <form method="POST">
	                        <lable class="field-title">Email</lable>
	                            <input type="email" class="form-control" name="email" required placeholder="Enter Your Email"><br>
	                        <lable class="field-title">Password</lable>
	                            <input type="password" class="form-control" name="pwd" required placeholder="Enter Your Password"><br>
	                            <button type="submit" class="btn btn-primary login-btn" name="submit">Login</button>
	                    </form>
	                </div>
	                <div class="forgot-area">
	                        <a href="forgot-password.php" class="forgot">Forgot Password</a>
	                    </div>
	            </div>
	        </div>
	        <div class="col-md-3"></div>
	    </div>
	</div>
	<div class="float-right d-none d-sm-block">
       <p><a href="http://www.webxpertindia.com/">  Designed and Promoted by  Web Expert India <img src="dist/img/wxi logo.png" style="width:180px;"></a></p>
    </div>
	
	<?php js();?>
	
</body>
</html>
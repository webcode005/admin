<?php 
	require_once 'functions.php';
	require_once 'config.php';
if(isset($_POST['crer']))
{
     $opas=md5($_POST['oldpassword']);
     $pas=$_POST['password'];
     $cpas=$_POST['cpassword'];
    
     $admin= $_SESSION['admin'];

     $sqlcheck = "SELECT * FROM admin WHERE email='$admin' AND pwd='$opas'";
                $result = $conn->query($sqlcheck);
                // $arow=$sqlcheck->fetch_assoc();
                
                // echo $rpas=$arow['pwd'];
            
            if ($result->num_rows > '0') 
            {
            
                 
                    if($cpas==$pas)
                    {
                        echo $password=md5($pas);
                    
                    	$sql="UPDATE `admin` SET  `pwd`='$password' , `pass`='$pas' WHERE email='$admin'";
                    
                        if ($conn->query($sql) === TRUE) 
                          {
                            session_destroy();
                            echo "<script>alert('Password Changed Successfully');window.location.href ='index'</script>";
                    
                          } 
                        else 
                        {
                        	 echo "<script>alert('Something goes Wrong');window.location.href ='create-new-password.php'</script>";
                        	
                        }
                    
                    } 
                        
                        // End Update Data
                    else 
                    {
                    	 echo "<script>alert('Confirm Password Not Match With New Password');window.location.href ='create-new-password.php'</script>";
                    	
                    }
                    
                    // End Confirm Password 
            
            }
            
            else
            {
                echo "<script>alert('Old Password Not Match ');window.location.href ='create-new-password.php'</script>";
            }
    

}
?>
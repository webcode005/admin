<?php 
	require_once 'functions.php';
	require_once 'config.php';
if(isset($_POST['crer']))
{
    
    $useremail=$_POST['email'];

    $sqlcheck = "SELECT pass FROM admin WHERE email='$useremail'";
    $result = $conn->query($sqlcheck);
    $sqlrow=$result->fetch_assoc();
    
     $pass=$sqlrow['pass']; 

        if ($result->num_rows == '0') {
        
        	 echo "<script>alert('You Are Not  Registered With Us Please Contact Website Owner!');window.location.href ='index'</script>";
        
        }
        
        else{

            $to = $useremail; 
            $from = 'premierbags.in'; 
            $fromName = 'premierbags.in'; 
             
            $subject = "Password For Admin Panel".time(); 
             
            $message = "Please use this password for login\n".$pass; 
             
            // Additional headers 
            $headers = 'From: '.$fromName.'<'.$from.'>'; 
             
            // Send email 
            if(mail($to, $subject, $message, $headers)){ 
            //   echo 'Email has sent successfully.'; 
                echo "<script>alert('Email has sent successfully');window.location.href ='index'</script>";
            }else{ 
               echo 'Email sending failed.'; 
            }
    
   
        }
    
}

?>
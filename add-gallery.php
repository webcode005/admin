<?php 
require_once 'functions.php';
require_once 'config.php';
define ("title", "Gallery");
define ("page_name", "Add Gallery");
if(isset($_POST['submit'])){
   
    $title = $_POST['name'];
    
//     if(empty($_POST['url_key'])){
// $url_key = str_replace("---","-",preg_replace("/[^-a-zA-Z0-9s]/", "-", strtolower(trim($title))));
// }
// else{
// $url_key = str_replace("---","-",preg_replace("/[^-a-zA-Z0-9s]/", "-", strtolower(trim($_POST['url_key']))));
// }
    $custome_image = $_FILES['main_image']['name'];
   if(empty($_FILES['main_image']['tmp_name'])) {
$custome_p_image = "";
}
else {
if (($_FILES['main_image']['type'] == "image/jpeg")
|| ($_FILES['main_image']['type'] == "image/jpg")
|| ($_FILES['main_image']['type'] == "image/gif")
|| ($_FILES['main_image']['type'] == "image/png")) {

$cat_image = preg_replace('/\s+/', '-', $custome_image);

//If file exists change the name Start
if(file_exists('uploads/custome_img/'.$featured_image)){
$actual_name = pathinfo($custome_image,PATHINFO_FILENAME);
$original_name = $actual_name;
$extension = pathinfo($custome_image, PATHINFO_EXTENSION);

$i = 1;
while(file_exists('uploads/'.$actual_name.".".$extension))
{           
$actual_name = (string)$original_name.$i;
$img_name = $actual_name.".".$extension;
$i++; 
} 
$custome_p_image=$img_name; 
}
else {
$custome_p_image=$custome_image;
}
//If file exists change the name End

move_uploaded_file($_FILES['main_image']['tmp_name'],'uploads/'.$custome_p_image);
}
else
{
$msg = "<div class='alert alert-danger'><button type='button' class='close' data-dismiss='alert'>×</button>Image must be in JPG, GIF or PNG Format.</div>";
}
}



// $ins = $conn->prepare("INSERT INTO product_image SET product_id=?, image1=?, image2=?,image3=?,image4=?");
// $ins ->bind_param("issss",$product_id,$featured_image, $final_image,$final_image2,$final_image3);
// $ins->execute();
$insert = $conn->prepare("INSERT INTO gallery SET name=?, image=?");
$insert->bind_param("ss",$title,$custome_p_image);

$insert->execute();
 $msg = "<div class='alert alert-success'><button type='button' class='close' data-dismiss='alert'>×</button>Record has been Inserted successfully</div>";
//}
}
?>

<!DOCTYPE html>
<html>
<head>

<?php head();?>

<!-- summernote -->
<link rel="stylesheet" href="plugins/summernote/summernote-bs4.css">
<link rel="stylesheet" href="plugins/select2/css/select2.min.css">
<style type="text/css">

table th, tr, td {
padding: 0px 0px 15px 20px;
}
</style>>
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

<?php header2();?>
<?php sidebar();?>

<div class="content-wrapper">
<?php breadcumb();?>

<section class="content">
<div class="container-fluid">
<div class="row">
<!-- left column -->
<div class="col-md-12">
<!-- general form elements -->

<!-- form start -->
<?php echo $msg;?>
<form role="form" method="post" enctype="multipart/form-data">

<div class="card card-primary">
<div class="card-header">
<h3 class="card-title">Name</h3>
</div>
<div class="card-body">
<div class="row">
	<div class="col-3">
		<div class="form-group">
			<label for="product_name">Name</label>
		</div>
	</div>
	<div class="col-9">
		<div class="form-group">
			<input type="text" class="form-control" id="title" name="name" placeholder="Enter Title" required>
		</div>
	</div>
</div>
</div>
</div>

<div class="card card-primary">
<div class="card-header">
<h3 class="card-title">Image</h3>
</div>
<div class="card-body">
<div class="row">
	<div class="col-3">
		<div class="form-group">
			<label for="product_name">Image</label>
		</div>
	</div>
	<div class="col-9">
		<div class="form-group">
			<input type="file" class="form-control" id="main_image" name="main_image" placeholder="Enter Title" required>
		</div>
	</div>
</div>
</div>
<div class="card-footer">
	<div class="col-3 form-group">
		<button type="submit" name="submit" class="btn btn-block btn-secondary">Submit</button>
	</div>
</div>
</div>
<!-- /.card-body -->
</form>
<!-- /.card -->

</div>
<!--/.col (left) -->
</div>
<!-- /.row -->
</div>
<!-- /.container-fluid -->
</section>

</div>


<?php footer2();?>

</div>

<?php js();?>
<script src="plugins/summernote/summernote-bs4.min.js"></script>
<script src="plugins/select2/js/select2.full.min.js"></script>
<script>
$(function () {
// Summernote
$('.select2').select2();
})
</script>
<script>



$(function () {
// Summernote
$('.textarea').summernote()
})
</script>
<script type="text/javascript">

function customeImage() {
if (document.getElementById('yesCheck').checked == false ) {
document.getElementById('ifYes').style.display = 'none';
}
else{
document.getElementById('ifYes').style.display = 'block';
}
}

</script>
<script>
    $("#parent_category").change(function(){
        var category_id = $('#parent_category').val();
        //alert(category_id);
        $.ajax({
            method:'post',
            url:'ajaxpage.php',
            data:{category_id:category_id},
            success:function(data){
                $("#sub_parent_category").html(data);
            }
        });
    });
</script>
</body>
</html>

<?php 
// ini_set('display_errors', 1);
// ini_set('display_startup_errors', 1);
// error_reporting(E_ALL);
$curl=$_SERVER['REQUEST_URI'];
require_once 'functions.php';
require_once 'config.php';
define ("title", "Product");
define ("page_name", "Add Product");
$id = $_GET['cid'];
$msg=null;
$select_data = $conn->query("SELECT * FROM product WHERE id='".$id."'");
$pro_data = $select_data->fetch_array();
$gal = $conn->query("SELECT * FROM product_image WHERE product_id='".$id."'");
$gal_data = $gal->fetch_array();
if(isset($_POST['submit'])){
    $category_id = $_POST['parent_category'];
    // $sub_category_id = $_POST['sub_parent_category'];
    $title = $_POST['title'];
    $description = $_POST['description'];
    // $fdescription = $_POST['fdescription'];
    // $seo_title = $_POST['seo_title'];
    // $seo_keyword = $_POST['seo_keyword'];
    // $seo_description = $_POST['seo_description'];
    $featured_image = $_FILES['main_featured_image']['name'];
    $image =$_FILES['image']['name'];
    $image2 =$_FILES['image2']['name'];
    $image3 =$_FILES['image3']['name'];

    // if(empty($_FILES['brochure']['tmp_name'])) {
    //   $brochure = $_POST['hidden_brochure'];
    // }
    // else
    // {
    //   $brochure =$_FILES['brochure']['name'];
    //   move_uploaded_file($_FILES['brochure']['tmp_name'],'uploads/brochure/'.$brochure);
    // }


    if(empty($_POST['url_key'])){
$url_key = str_replace("---","-",preg_replace("/[^-a-zA-Z0-9s]/", "-", strtolower(trim($title))));
}
else{
$url_key = str_replace("---","-",preg_replace("/[^-a-zA-Z0-9s]/", "-", strtolower(trim($_POST['url_key']))));
}
    $custome_image = $_FILES['main_image']['name'];
   if(empty($_FILES['main_image']['tmp_name'])) {
$custome_p_image = $_POST['hidden_main_image'];
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

// $insert = $conn->prepare("UPDATE product SET category_id=?, sub_category_id=?, title=?, description=?, main_image=?, seo_title=?, seo_keyword=?, seo_description=?, url_key=? WHERE id='".$id."'");
// $insert->bind_param("iisssssss",$category_id,$sub_category_id, $title , $description, $custome_p_image, $seo_title, $seo_keyword, $seo_description, $url_key);

// $insert->execute();
//if($conn->affected_rows==1){
   //echo $product_id = $id;
   if(empty($_FILES['main_featured_image']['tmp_name'])) {
$m_featured_image = $_POST['hidden_main_featured_image'];
}
else {
if (($_FILES['main_featured_image']['type'] == "image/jpeg")
|| ($_FILES['main_featured_image']['type'] == "image/jpg")
|| ($_FILES['main_featured_image']['type'] == "image/gif")
|| ($_FILES['main_featured_image']['type'] == "image/png")) {

$cat_image = preg_replace('/\s+/', '-', $featured_image);

//If file exists change the name Start
if(file_exists('uploads/'.$featured_image)){
$actual_name = pathinfo($featured_image,PATHINFO_FILENAME);
$original_name = $actual_name;
$extension = pathinfo($featured_image, PATHINFO_EXTENSION);

$i = 1;
while(file_exists('uploads/'.$actual_name.".".$extension))
{           
$actual_name = (string)$original_name.$i;
$img_name = $actual_name.".".$extension;
$i++; 
} 
$m_featured_image=$img_name; 
}
else {
$m_featured_image=$featured_image;
}
//If file exists change the name End

move_uploaded_file($_FILES['main_featured_image']['tmp_name'],'uploads/'.$m_featured_image);
}
else
{
$msg = "<div class='alert alert-danger'><button type='button' class='close' data-dismiss='alert'>×</button>Image must be in JPG, GIF or PNG Format.</div>";
}
}

// gal img 2
if(empty($_FILES['image']['tmp_name'])) {
      $final_image = $_POST['hidden_image'];
    }
    else {
      if (($_FILES['image']['type'] == "image/jpeg")
      || ($_FILES['image']['type'] == "image/jpg")
      || ($_FILES['image']['type'] == "image/gif")
      || ($_FILES['image']['type'] == "image/png")) {
      
        $cat_image = preg_replace('/\s+/', '-', $image);

        //If file exists change the name Start
        if(file_exists('uploads/'.$image)){
          $actual_name = pathinfo($image,PATHINFO_FILENAME);
          $original_name = $actual_name;
          $extension = pathinfo($image, PATHINFO_EXTENSION);
          
          $i = 1;
          while(file_exists('uploads/'.$actual_name.".".$extension))
          {           
            $actual_name = (string)$original_name.$i;
            $img_name = $actual_name.".".$extension;
            $i++; 
          } 
          $final_image=$img_name; 
        }
        else {
          $final_image=$image;
        }
        //If file exists change the name End
        
        move_uploaded_file($_FILES['image']['tmp_name'],'uploads/'.$final_image);
      }
      else
      {
        $msg = "<div class='alert alert-danger'><button type='button' class='close' data-dismiss='alert'>×</button>Image must be in JPG, GIF or PNG Format.</div>";
      }
    }
    
    // gal img 3
    
// Banner Image----------------------
    if(empty($_FILES['image2']['tmp_name'])) {
      $final_image2 = $_POST['hidden_image2'];
    }
    else {
      if (($_FILES['image2']['type'] == "image/jpeg")
      || ($_FILES['image2']['type'] == "image/jpg")
      || ($_FILES['image2']['type'] == "image/gif")
      || ($_FILES['image2']['type'] == "image/png")) {
      
        $cat_image2 = preg_replace('/\s+/', '-', $image2);

        //If file exists change the name Start
        if(file_exists('uploads/'.$image2)){
          $actual_name2 = pathinfo($image2,PATHINFO_FILENAME);
          $original_name2 = $actual_name2;
          $extension2 = pathinfo($image2, PATHINFO_EXTENSION);
          
          $i = 1;
          while(file_exists('uploads/'.$actual_name2.".".$extension2))
          {           
            $actual_name2 = (string)$original_name2.$i;
            $img_name2 = $actual_name2.".".$extension2;
            $i++; 
          } 
          $final_image2=$img_name2; 
        }
        else {
          $final_image2=$image2;
        }
        //If file exists change the name End
        
        move_uploaded_file($_FILES['image2']['tmp_name'],'uploads/'.$final_image2);
      }
      else
      {
        $msg = "<div class='alert alert-danger'><button type='button' class='close' data-dismiss='alert'>×</button>Image must be in JPG, GIF or PNG Format.</div>";
      }
    }
    //  gal img 4
    
// Banner Image----------------------
    if(empty($_FILES['image3']['tmp_name'])) {
      $final_image3 = $_POST['hidden_image3'];
    }
    else {
      if (($_FILES['image3']['type'] == "image/jpeg")
      || ($_FILES['image3']['type'] == "image/jpg")
      || ($_FILES['image3']['type'] == "image/gif")
      || ($_FILES['image3']['type'] == "image/png")) {
      
        $cat_image3 = preg_replace('/\s+/', '-', $image3);

        //If file exists change the name Start
        if(file_exists('uploads/'.$image3)){
          $actual_name3 = pathinfo($image3,PATHINFO_FILENAME);
          $original_name3 = $actual_name3;
          $extension3 = pathinfo($image3, PATHINFO_EXTENSION);
          
          $i = 1;
          while(file_exists('uploads/'.$actual_name3.".".$extension3))
          {           
            $actual_name3 = (string)$original_name3.$i;
            $img_name3 = $actual_name3.".".$extension3;
            $i++; 
          } 
          $final_image3=$img_name3; 
        }
        else {
          $final_image3=$image3;
        }
        //If file exists change the name End
        
        move_uploaded_file($_FILES['image3']['tmp_name'],'uploads/'.$final_image3);
      }
      else
      {
        $msg = "<div class='alert alert-danger'><button type='button' class='close' data-dismiss='alert'>×</button>Image must be in JPG, GIF or PNG Format.</div>";
      }
    }

// $ins = $conn->prepare("INSERT INTO product_image SET product_id=?, image1=?, image2=?,image3=?,image4=?");
// $ins ->bind_param("issss",$product_id,$m_featured_image, $final_image,$final_image2,$final_image3);
// $ins->execute();
$insert = $conn->prepare("UPDATE product SET category_id=?,  title=?, description=?, main_image=?, url_key=?,image1=?, image2=?,image3=?,image4=? WHERE id='".$id."'");
$insert->bind_param("issssssss",$category_id, $title , $description, $custome_p_image, $url_key,$m_featured_image, $final_image,$final_image2,$final_image3);

$insert->execute();
 $msg = "<div class='alert alert-success'><button type='button' class='close' data-dismiss='alert'>×</button>Record has been Updated successfully</div>";
echo "<script> setTimeout(function () { window.location.href = 'edit-product.php?cid=$id'; }, 1000); </script>";
//}
}


// delete gallery images
if(isset($_GET['gal_img1'])){
   if($sql1=$conn->prepare("UPDATE product SET image1='' WHERE id='".$_GET['gal_img1']."'")){
       $sql1->execute();
       $curl="edit-product.php?cid=".$_GET['gal_img1'];
       $msg = "<div class='alert alert-success'><button type='button' class='close' data-dismiss='alert'>×</button>Gallery Image Deleted Successfully.</div>";
   echo "<script> setTimeout(function () { window.location.href = '$curl'; }, 1000); </script>";
       
   }
}
if(isset($_GET['gal_img2'])){
   if($sql2=$conn->prepare("UPDATE product SET image2='' WHERE id='".$_GET['gal_img2']."'")){
       $sql2->execute();
       $curl="edit-product.php?cid=".$_GET['gal_img2'];
       $msg = "<div class='alert alert-success'><button type='button' class='close' data-dismiss='alert'>×</button>Gallery Image Deleted Successfully.</div>";
   echo "<script> setTimeout(function () { window.location.href = '$curl'; }, 1000); </script>";
       
   }
}
if(isset($_GET['gal_img3'])){
    
   if($sql3=$conn->prepare("UPDATE product SET image3='' WHERE id='".$_GET['gal_img3']."'")){
       $sql3->execute();
       $curl="edit-product.php?cid=".$_GET['gal_img3'];
       $msg = "<div class='alert alert-success'><button type='button' class='close' data-dismiss='alert'>×</button>Gallery Image Deleted Successfully.</div>";
   echo "<script> setTimeout(function () { window.location.href = '$curl'; }, 1000); </script>";
       
   }
}
if(isset($_GET['gal_img4'])){
   if($sql4=$conn->prepare("UPDATE product SET image4='' WHERE id='".$_GET['gal_img4']."'")){
       $sql4->execute();
       $curl="edit-product.php?cid=".$_GET['gal_img4'];
       $msg = "<div class='alert alert-success'><button type='button' class='close' data-dismiss='alert'>×</button>Gallery Image Deleted Successfully.</div>";
   echo "<script> setTimeout(function () { window.location.href = '$curl'; }, 1000); </script>";
       
   }
}


if(isset($_GET['brdelete'])){
   if($sql4=$conn->prepare("UPDATE product SET brochure='' WHERE id='".$_GET['brdelete']."'")){
       $sql4->execute();
       $curl="edit-product.php?cid=".$_GET['brdelete'];
       $msg = "<div class='alert alert-success'><button type='button' class='close' data-dismiss='alert'>×</button>Brochure Deleted Successfully.</div>";
   echo "<script> setTimeout(function () { window.location.href = '$curl'; }, 1000); </script>";
       
   }
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
<h3 class="card-title">Category</h3>
</div>
<div class="card-body">
<div class="row">
	<div class="col-3">
		<div class="form-group">
			<label for="product_name">Category</label>
		</div>
	</div>
	<div class="col-9">
		<div class="form-group">
			<select class="form-control select2" id="parent_category" name="parent_category" >

			<option>Choose Category</option>
			<?php 
			$cat = $conn->query("SELECT * FROM category");
			while($cat_data = $cat->fetch_array()){
			?>
			<option value="<?php echo $cat_data['id'];?>" <?php if($cat_data['id']==$pro_data['category_id']){echo "selected";}?>><?php echo $cat_data['category_name'];?></option>
				<?php } ?>
			</select>
		</div>
	</div>
</div>

</div>
</div>
<div class="card card-primary">
<div class="card-header">
<h3 class="card-title">Title</h3>
</div>
<div class="card-body">
<div class="row">
	<div class="col-3">
		<div class="form-group">
			<label for="product_name">Title </label>
		</div>
	</div>
	<div class="col-9">
		<div class="form-group">
			<input type="text" class="form-control" id="title" name="title" placeholder="Enter Title"  value="<?php echo $pro_data['title'];?>">
		</div>
	</div>
</div>
</div>
</div>
<div class="card card-primary">
<div class="card-header">
<h3 class="card-title"> Description</h3>
</div>

<div class="card-body">
<div class="row">
	<div class="col-3">
		<div class="form-group">
			<label for="product_name"> Description</label>
		</div>
	</div>
	<div class="col-9">
		<div class="form-group">
			<textarea class="textarea" name="description" id="description" placeholder="Place some text here"><?php echo $pro_data['description'];?></textarea>
		</div>
	</div>
</div>
</div>
	
</div>

<div class="card card-primary">
<div class="card-header">
<h3 class="card-title">Images</h3>
</div>
<div class="card-body">
<div class="row">
	<div class="col-3">
		<div class="form-group">
			<label for="product_name">Main Image</label>
		</div>
	</div>
	<div class="col-9">
		<div class="form-group">
		    	<input type="hidden" class="form-control" id="main_image" name="hidden_main_image" placeholder="Enter Title" value="<?php echo $pro_data['main_image']?>">
			<input type="file" class="form-control" id="main_image" name="main_image" placeholder="Enter Title">
			<img src="uploads/<?php echo $pro_data['main_image'];?>" width="100" height="100">
		</div>
	</div>
</div>
<div class="row">
	<div class="col-3">
		<div class="form-group">
			<label for="product_name">Gallery Image 1</label>
		</div>
	</div>
	<div class="col-9">
		<div class="form-group">
		    <input type="hidden" class="form-control" id="main_image" name="hidden_main_featured_image" placeholder="Enter Title" value="<?php echo $pro_data['image1']?>">
			<input type="file" class="form-control" id="main_featured_image" name="main_featured_image" placeholder="Enter Title" >
			<?php if(!empty($pro_data['image1'])){?>
			<img src="uploads/<?php echo $pro_data['image1'];?>" width="100" height="100">
			&nbsp;&nbsp;<a href="?gal_img1=<?php echo $pro_data['id'];?>" class="btn btn-sm btn-danger" onclick="return confirm('Are you sure ?');"><i class="fa fa-trash"></i></a>
			<?php } ?>
		</div>
	</div>
</div>
<div class="row">
	<div class="col-3">
		<div class="form-group">
			<label for="product_name">Gallery Image 2</label>
		</div>
	</div>
	<div class="col-9">
		<div class="form-group">
		    <input type="hidden" class="form-control" id="main_image" name="hidden_image" placeholder="Enter Title" value="<?php echo $pro_data['image2']?>">
			<input type="file" class="form-control" id="image2" name="image" placeholder="Enter Title" >
			<?php if(!empty($pro_data['image2'])){?>
			<img src="uploads/<?php echo $pro_data['image2'];?>" width="100" height="100">
			&nbsp;&nbsp;<a href="?gal_img2=<?php echo $pro_data['id'];?>" class="btn btn-sm btn-danger" onclick="return confirm('Are you sure ?');"><i class="fa fa-trash"></i></a>
			<?php } ?>
		</div>
	</div>
</div>
<div class="row">
	<div class="col-3">
		<div class="form-group">
			<label for="product_name">Gallery Image 3</label>
		</div>
	</div>
	<div class="col-9">
		<div class="form-group">
		     <input type="hidden" class="form-control" id="main_image" name="hidden_image2" placeholder="Enter Title" value="<?php echo $pro_data['image3']?>">
			<input type="file" class="form-control" id="image3" name="image2" placeholder="Enter Title" >
			<?php if(!empty($pro_data['image3'])){?>
			<img src="uploads/<?php echo $pro_data['image3'];?>" width="100" height="100">
			&nbsp;&nbsp;<a href="?gal_img3=<?php echo $pro_data['id'];?>" class="btn btn-sm btn-danger" onclick="return confirm('Are you sure ?');"><i class="fa fa-trash"></i></a>
			<?php } ?>
		</div>
	</div>
</div>
<div class="row">
	<div class="col-3">
		<div class="form-group">
			<label for="product_name">Gallery Image 4</label>
		</div>
	</div>
	<div class="col-9">
		<div class="form-group">
		    <input type="hidden" class="form-control" id="main_image" name="hidden_image3" placeholder="Enter Title" value="<?php echo $pro_data['image4']?>">
			<input type="file" class="form-control" id="image4" name="image3" placeholder="Enter Title" >
			<?php if(!empty($pro_data['image4'])){?>
			<img src="uploads/<?php echo $pro_data['image4'];?>" width="100" height="100">
			&nbsp;&nbsp;<a href="?gal_img4=<?php echo $pro_data['id'];?>" class="btn btn-sm btn-danger" onclick="return confirm('Are you sure ?');"><i class="fa fa-trash"></i></a>
			<?php } ?>
		</div>
	</div>
</div>
</div>
</div>


<!--<div class="card card-primary">-->
<!--<div class="card-header">-->
<!--<h3 class="card-title">SEO</h3>-->
<!--</div>-->

<!--<div class="card-body">-->

<!--<div class="row">-->
<!--	<div class="col-3">-->
<!--		<div class="form-group">-->
<!--			<label for="product_name">SEO Title</label>-->
<!--		</div>-->
<!--	</div>-->
<!--	<div class="col-9">-->
<!--		<div class="form-group">-->
<!--			<input type="text" class="form-control" name="seo_title" value="<?php echo $pro_data['seo_title'];?>">-->
<!--		</div>-->
<!--	</div>-->
<!--</div>-->
<!--<div class="row">-->
<!--	<div class="col-3">-->
<!--		<div class="form-group">-->
<!--			<label for="product_name">SEO Description</label>-->
<!--		</div>-->
<!--	</div>-->
<!--	<div class="col-9">-->
<!--		<div class="form-group">-->
<!--			<textarea class="form-control" name="seo_description" id="" placeholder="Place some text here"><?php echo $pro_data['seo_description'];?></textarea>-->
<!--		</div>-->
<!--	</div>-->
<!--</div>-->
<!--<div class="row">-->
<!--	<div class="col-3">-->
<!--		<div class="form-group">-->
<!--			<label for="product_name">SEO Keyword</label>-->
<!--		</div>-->
<!--	</div>-->
<!--	<div class="col-9">-->
<!--		<div class="form-group">-->
<!--			<input type="text" class="form-control" name="seo_keyword" value="<?php echo $pro_data['seo_keyword'];?>">-->
<!--		</div>-->
<!--	</div>-->
<!--</div>-->
<!--</div>-->
<!--	<div class="card-footer">-->
<!--		<div class="col-3 form-group">-->
<!--			<button type="submit" name="submit" class="btn btn-block btn-secondary">Submit</button>-->
<!--		</div>-->
<!--	</div>-->
<!--</div>-->

<!--<div class="card card-primary">-->
<!--<div class="card-header">-->
<!--<h3 class="card-title">Gallery</h3>-->
<!--</div>-->
<!--<div class="card-body">-->
<!--<div class="row">-->
<!--	<div class="col-3">-->
<!--		<div class="form-group">-->
<!--			<label for="image">Gallery</label>-->
<!--		</div>-->
<!--	</div>-->
<!--	<div class="col-6">-->
<!--		<div class="custom-file">-->
<!--				<div id="filediv"><input name="file[]" type="file" id="gallery"/></div>-->
<!--				<input type="button" id="add_more" class="upload" value="Add More Images"/>-->
<!--			</div>-->
<!--	</div>-->
<!--</div>-->
<!--</div>-->
<!--</div>-->

	
<!-- /.card-body -->
	<div class="card-footer">
		<div class="col-3 form-group">
			<button type="submit" name="submit" class="btn btn-block btn-secondary">Submit</button>
		</div>
	</div>
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

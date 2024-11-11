<?php 
include'config.php';
if(!empty($_POST['category_id'])){
    $cat_id = $_POST['category_id'];
    $s_cat = $conn->query("SELECT * FROM sub_category WHERE category_id ='".$cat_id."'"); ?>
     <option>Select Sub Category</option>
    <?php while($cat_datas = $s_cat->fetch_array()){ ?>
       
        <option value="<?php echo $cat_datas['id'];?>"><?php echo $cat_datas['sub_category_name'];?></option>
   <?php }
}
?>
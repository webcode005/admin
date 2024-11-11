<?php function footer2(){ ?>

  <footer class="main-footer">
    <div class="float-right d-none d-sm-block">
       <p><a href="http://www.webxpertindia.com/">  Designed and Promoted by  Web Expert India <img src="dist/img/wxi logo.png" style="width:210px;"></a></p>
    </div>
    
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
  
<?php } function js(){ ?>


<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- DataTables -->
<script src="plugins/datatables/jquery.dataTables.js"></script>
<script src="plugins/datatables/dataTables.bootstrap4.js"></script>
<!-- FastClick -->
<script src="plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
<script src="dist/js/script.js"></script>
<script src="plugins/select2/js/select2.full.min.js"></script>
<!-- page script -->
	 <script type="text/javascript">
window.setTimeout(function() {
    $(".alert").fadeTo(500, 0).slideUp(500, function(){
        $(this).remove(); 
    });
}, 2000);

$(function () {
    // Summernote
    $('.select2').select2();
  })
</script>
<?php } ?>
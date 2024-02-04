<?php
require_once('../config.php');
if(isset($_GET['id']) && $_GET['id'] > 0){
    $qry = $conn->query("SELECT * from `images` where id = '{$_GET['id']}' ");
    if($qry->num_rows > 0){
        foreach($qry->fetch_assoc() as $k => $v){
            $$k=$v;
        }
    }
}
?>
<style>
    #uni_modal .modal-header,#uni_modal .modal-footer{
        display:none !important;
    }
</style>
<div class="container-fluid">
    <div class="w-100 d-flex justify-content-between">
        <h4><b><?php echo $original_name ?></b></h4>
        <a href="#" data-dismiss='modal' class="text-dark"><i class="fa fa-times"></i></a>
    </div>
</div>
<div class="container-fluid bg-dark" >
    <div id="img-holder" class='w-100'>
        <img src="<?php echo validate_image($path_name) ?>" alt="img" loading="lazy" class="w-100 view-img" id="view-img">
    </div>
</div>
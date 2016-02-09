<div class="portlet box blue ">
	<div class="portlet-title">
		<div class="caption">
			<i class="fa fa-reorder"></i> Ubah Password <?php echo $model->NAMA_USER; ?>
		</div>
		<div class="tools">
			
		</div>
	</div>
    <div class="portlet-body form">
        <?php echo $this->renderPartial('_form_ubahpassword', array('model'=>$model)); ?>    </div>
</div>
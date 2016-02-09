<div class="portlet box green ">
	<div class="portlet-title">
		<div class="caption">
			<i class="fa fa-reorder"></i> Unsur Pendidikan
		</div>
		<div class="tools">
			
		</div>
	</div>
    <div class="portlet-body form">
        <?php if (Yii::app()->user->LEVEL == '1'): ?>
        <?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
        <?php else:?>
        <?php echo $this->renderPartial('_form_dosen', array('model'=>$model)); ?></div>
        <?php endif;?>
</div>
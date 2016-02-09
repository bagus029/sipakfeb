<?php
/* @var $this TblAkTetapController */
/* @var $model TblAkTetap 

$this->breadcrumbs=array(
	'Tbl Ak Tetaps'=>array('index'),
	$model->ID_AK_TETAP=>array('view','id'=>$model->ID_AK_TETAP),
	'Update',
);

$this->menu=array(
	array('label'=>'List TblAkTetap', 'url'=>array('index')),
	array('label'=>'Create TblAkTetap', 'url'=>array('create')),
	array('label'=>'View TblAkTetap', 'url'=>array('view', 'id'=>$model->ID_AK_TETAP)),
	array('label'=>'Manage TblAkTetap', 'url'=>array('admin')),
);*/
?>
<div class="portlet box blue ">
	<div class="portlet-title">
		<div class="caption">
			<i class="fa fa-reorder"></i> Update Angka Kredit
		</div>
		<div class="tools">
			
		</div>
	</div>
    <div class="portlet-body form">
        <?php echo $this->renderPartial('_form', array('model'=>$model)); ?>    </div>
</div>
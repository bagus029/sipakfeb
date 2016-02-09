<?php
/* @var $this TblPersenController */
/* @var $model TblPersen */

$this->breadcrumbs=array(
	'Tbl Persens'=>array('index'),
	$model->id_persen=>array('view','id'=>$model->id_persen),
	'Update',
);

$this->menu=array(
	array('label'=>'List TblPersen', 'url'=>array('index')),
	array('label'=>'Create TblPersen', 'url'=>array('create')),
	array('label'=>'View TblPersen', 'url'=>array('view', 'id'=>$model->id_persen)),
	array('label'=>'Manage TblPersen', 'url'=>array('admin')),
);
?>

<div class="portlet box blue ">
	<div class="portlet-title">
		<div class="caption">
			<i class="fa fa-reorder"></i> Update Data Jurusan
		</div>
		<div class="tools">
			
		</div>
	</div>
    <div class="portlet-body form">
        <?php echo $this->renderPartial('_form', array('model'=>$model)); ?>    </div>
</div>
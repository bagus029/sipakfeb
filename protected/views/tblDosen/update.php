<?php
/* @var $this TblDosenController */
/* @var $model TblDosen */

$this->breadcrumbs=array(
	'Tbl Dosens'=>array('index'),
	$model->ID_DOSEN=>array('view','id'=>$model->ID_DOSEN),
	'Update',
);

$this->menu=array(
	array('label'=>'List TblDosen', 'url'=>array('index')),
	array('label'=>'Create TblDosen', 'url'=>array('create')),
	array('label'=>'View TblDosen', 'url'=>array('view', 'id'=>$model->ID_DOSEN)),
	array('label'=>'Manage TblDosen', 'url'=>array('admin')),
);
?>
<div class="portlet box blue ">
	<div class="portlet-title">
		<div class="caption">
			<i class="fa fa-reorder"></i> Update Data Dosen
		</div>
		<div class="tools">
			
		</div>
	</div>
    <div class="portlet-body form">
        <?php echo $this->renderPartial('_form', array('model'=>$model)); ?>    </div>
</div>
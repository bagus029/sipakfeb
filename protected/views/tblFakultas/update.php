<?php
/* @var $this TblFakultasController */
/* @var $model TblFakultas */

$this->breadcrumbs=array(
	'Tbl Fakultases'=>array('index'),
	$model->ID_FAKULTAS=>array('view','id'=>$model->ID_FAKULTAS),
	'Update',
);

$this->menu=array(
	array('label'=>'List TblFakultas', 'url'=>array('index')),
	array('label'=>'Create TblFakultas', 'url'=>array('create')),
	array('label'=>'View TblFakultas', 'url'=>array('view', 'id'=>$model->ID_FAKULTAS)),
	array('label'=>'Manage TblFakultas', 'url'=>array('admin')),
);
?>
<div class="portlet box blue ">
	<div class="portlet-title">
		<div class="caption">
			<i class="fa fa-reorder"></i> Update Data Fakultas
		</div>
		<div class="tools">
			
		</div>
	</div>
    <div class="portlet-body form">
        <?php echo $this->renderPartial('_form', array('model'=>$model)); ?>    </div>
</div>
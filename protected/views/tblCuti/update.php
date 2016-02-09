<?php
/* @var $this TblCutiController */
/* @var $model TblCuti */

$this->breadcrumbs=array(
	'Tbl Cutis'=>array('index'),
	$model->ID_CUTI=>array('view','id'=>$model->ID_CUTI),
	'Update',
);

$this->menu=array(
	array('label'=>'List TblCuti', 'url'=>array('index')),
	array('label'=>'Create TblCuti', 'url'=>array('create')),
	array('label'=>'View TblCuti', 'url'=>array('view', 'id'=>$model->ID_CUTI)),
	array('label'=>'Manage TblCuti', 'url'=>array('admin')),
);
?>

<h1>Update TblCuti <?php echo $model->ID_CUTI; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>
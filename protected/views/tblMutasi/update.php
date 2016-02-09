<?php
/* @var $this TblMutasiController */
/* @var $model TblMutasi */

$this->breadcrumbs=array(
	'Tbl Mutasis'=>array('index'),
	$model->ID_MUTASI=>array('view','id'=>$model->ID_MUTASI),
	'Update',
);

$this->menu=array(
	array('label'=>'List TblMutasi', 'url'=>array('index')),
	array('label'=>'Create TblMutasi', 'url'=>array('create')),
	array('label'=>'View TblMutasi', 'url'=>array('view', 'id'=>$model->ID_MUTASI)),
	array('label'=>'Manage TblMutasi', 'url'=>array('admin')),
);
?>

<h1>Update TblMutasi <?php echo $model->ID_MUTASI; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>
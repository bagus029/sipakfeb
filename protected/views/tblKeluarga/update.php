<?php
/* @var $this TblKeluargaController */
/* @var $model TblKeluarga */

$this->breadcrumbs=array(
	'Tbl Keluargas'=>array('index'),
	$model->ID_KELUARGA=>array('view','id'=>$model->ID_KELUARGA),
	'Update',
);

$this->menu=array(
	array('label'=>'List TblKeluarga', 'url'=>array('index')),
	array('label'=>'Create TblKeluarga', 'url'=>array('create')),
	array('label'=>'View TblKeluarga', 'url'=>array('view', 'id'=>$model->ID_KELUARGA)),
	array('label'=>'Manage TblKeluarga', 'url'=>array('admin')),
);
?>

<h1>Update TblKeluarga <?php echo $model->ID_KELUARGA; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>
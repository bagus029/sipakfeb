<?php
/* @var $this TblCutiController */
/* @var $model TblCuti */

$this->breadcrumbs=array(
	'Tbl Cutis'=>array('index'),
	$model->ID_CUTI,
);

$this->menu=array(
	array('label'=>'List TblCuti', 'url'=>array('index')),
	array('label'=>'Create TblCuti', 'url'=>array('create')),
	array('label'=>'Update TblCuti', 'url'=>array('update', 'id'=>$model->ID_CUTI)),
	array('label'=>'Delete TblCuti', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->ID_CUTI),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage TblCuti', 'url'=>array('admin')),
);
?>

<h1>View TblCuti #<?php echo $model->ID_CUTI; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'ID_CUTI',
		'ID_DOSEN',
		'JENIS_CUTI',
		'MULAI_CUTI',
		'AKHIR_CUTI',
		'KET_CUTI',
	),
)); ?>

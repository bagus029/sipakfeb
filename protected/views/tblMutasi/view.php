<?php
/* @var $this TblMutasiController */
/* @var $model TblMutasi */

$this->breadcrumbs=array(
	'Tbl Mutasis'=>array('index'),
	$model->ID_MUTASI,
);

$this->menu=array(
	array('label'=>'List TblMutasi', 'url'=>array('index')),
	array('label'=>'Create TblMutasi', 'url'=>array('create')),
	array('label'=>'Update TblMutasi', 'url'=>array('update', 'id'=>$model->ID_MUTASI)),
	array('label'=>'Delete TblMutasi', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->ID_MUTASI),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage TblMutasi', 'url'=>array('admin')),
);
?>

<h1>View TblMutasi #<?php echo $model->ID_MUTASI; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'ID_MUTASI',
		'ID_DOSEN',
		'JABTAN_LAMA',
		'UNIT_KERJA_LAMA',
		'TMT_LAMA',
		'JABATAN_BARU',
		'UNIT_KERJA_BARU',
		'TMT_BARU',
	),
)); ?>

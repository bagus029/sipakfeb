<?php
/* @var $this TblKeluargaController */
/* @var $model TblKeluarga */

$this->breadcrumbs=array(
	'Tbl Keluargas'=>array('index'),
	$model->ID_KELUARGA,
);

$this->menu=array(
	array('label'=>'List TblKeluarga', 'url'=>array('index')),
	array('label'=>'Create TblKeluarga', 'url'=>array('create')),
	array('label'=>'Update TblKeluarga', 'url'=>array('update', 'id'=>$model->ID_KELUARGA)),
	array('label'=>'Delete TblKeluarga', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->ID_KELUARGA),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage TblKeluarga', 'url'=>array('admin')),
);
?>

<h1>View TblKeluarga #<?php echo $model->ID_KELUARGA; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'ID_KELUARGA',
		'ID_STATUS',
		'ID_DOSEN',
		'NAMA_KELUARGA',
		'TGL_LAHIR',
		'TMP_LAHIR',
		'TGL_NIKAH',
		'TGL_CERAI_MENINGGAL',
		'PEKERJAAN',
		'ALAMAT_KELUARGA',
	),
)); ?>

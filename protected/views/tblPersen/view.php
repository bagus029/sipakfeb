<?php
/* @var $this TblPersenController */
/* @var $model TblPersen */

$this->breadcrumbs=array(
	'Tbl Persens'=>array('index'),
	$model->id_persen,
);

$this->menu=array(
	array('label'=>'List TblPersen', 'url'=>array('index')),
	array('label'=>'Create TblPersen', 'url'=>array('create')),
	array('label'=>'Update TblPersen', 'url'=>array('update', 'id'=>$model->id_persen)),
	array('label'=>'Delete TblPersen', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id_persen),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage TblPersen', 'url'=>array('admin')),
);
?>

<h1>View TblPersen #<?php echo $model->id_persen; ?></h1>
<div class="portlet box yellow">
<div class="portlet-title">
    <div class="caption">
	<i class="fa fa-pencil-square-o"></i> Data Jurusan #<?php echo $model->ID_JURUSAN; ?>  </div>
    </div>
    <div class="portlet-body">
<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id_persen',
		'jabatan',
		'kualifikasi_akad',
		'pel_pend',
		'pel_pen',
		'pel_peng',
		'unsur_penunjang',
	),
)); ?>
    </div>

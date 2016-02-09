<?php
/* @var $this TblJurusanController */
/* @var $model TblJurusan */

$this->breadcrumbs=array(
	'Tbl Jurusans'=>array('index'),
	$model->ID_JURUSAN,
);
?>

<h1>View Jurusan #<?php echo $model->ID_JURUSAN; ?></h1>
<div class="portlet box yellow">
<div class="portlet-title">
    <div class="caption">
	<i class="fa fa-pencil-square-o"></i> Data Jurusan #<?php echo $model->ID_JURUSAN; ?>  </div>
    </div>
    <div class="portlet-body">
<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'ID_JURUSAN',
		'NAMA_JURUSAN',
		'NAMA_PIMPINAN',
		'NIP_PIMPINAN',
		'ID_FAKULTAS',
	),
)); ?>
        <?php echo CHtml::link('<i class="icon-control-rewind"></i> Kembali',array('admin'),array('class'=>'btn btn-success btn-md'));?>
    </div>
</div>
<?php
/* @var $this TblFakultasController */
/* @var $model TblFakultas */

$this->breadcrumbs=array(
	'Tbl Fakultases'=>array('index'),
	$model->ID_FAKULTAS,
);
?>
<div class="portlet box yellow">
<div class="portlet-title">
    <div class="caption">
	<i class="fa fa-pencil-square-o"></i> Data Fakultas #<?php echo $model->ID_FAKULTAS; ?>  </div>
    </div>
    <div class="portlet-body">
<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'ID_FAKULTAS',
		'NAMA_FAKULTAS',
		'PIMPINAN_FAKULTAS',
		'NIP_PIMPINAN',
	),
)); ?>
<?php echo CHtml::link('<i class="icon-control-rewind"></i> Kembali',array('admin'),array('class'=>'btn btn-success btn-md'));?>
    </div>
</div>
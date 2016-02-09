<?php
/* @var $this TblGolonganController */
/* @var $model TblGolongan */

$this->breadcrumbs=array(
	'Tbl Golongans'=>array('index'),
	$model->ID_GOLONGAN,
);
?>
<div class="portlet box yellow">
<div class="portlet-title">
  <div class="caption">
	<i class="fa fa-pencil-square-o"></i> View Golongan Dosen #<?php echo $model->GOLONGAN; ?>  </div>
</div>

<div class="portlet-body">
<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
        'htmlOptions' => array('class'=> 'table table-bordered table-striped table-advance table-hover'),
	'attributes'=>array(
		'ID_GOLONGAN',
		'GOLONGAN',
		'PANGKAT',
	),
)); ?>
    <?php echo CHtml::link('<i class="icon-control-rewind"></i> Kembali',array('admin'),array('class'=>'btn btn-success btn-md'));?>
</div>
</div>
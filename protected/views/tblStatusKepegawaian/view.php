<?php
/* @var $this TblStatusKepegawaianController */
/* @var $model TblStatusKepegawaian */

$this->breadcrumbs=array(
	'Tbl Status Kepegawaians'=>array('index'),
	$model->ID_STATUS_KEP,
);
?>
<div class="portlet box yellow">
<div class="portlet-title">
  <div class="caption">
	<i class="fa fa-pencil-square-o"></i> View Status Kepegawaian #<?php echo $model->STATUS_KEP; ?>  </div>
</div>

<div class="portlet-body">
<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
        'htmlOptions' => array('class'=> 'table table-bordered table-striped table-advance table-hover'),
	'attributes'=>array(
		'ID_STATUS_KEP',
		'STATUS_KEP',
	),
)); ?>
    <?php echo CHtml::link('<i class="icon-control-rewind"></i> Kembali',array('admin'),array('class'=>'btn btn-success btn-md'));?>
</div>
</div>
<?php
/* @var $this SubunPelpendController */
/* @var $model SubunPelpend */

$this->breadcrumbs=array(
	'Subun Pelpends'=>array('index'),
	$model->ID_SUBPELPEND,
);
?>
<div class="portlet box yellow">
<div class="portlet-title">
    <div class="caption">
	<i class="fa fa-pencil-square-o"></i> Sub Unsur Pelaksanaan Pendidikan #<?php echo $model->ID_SUBPELPEND; ?>  </div>
    </div>
    <div class="portlet-body">
<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
        'htmlOptions' => array('class'=> 'table table-bordered table-striped table-advance table-hover'),
	'attributes'=>array(
		'ID_SUBPELPEND',
		'SUBPELPEND',
	),
)); ?>
        <?php echo CHtml::link('<i class="icon-control-rewind"></i> Kembali',array('admin'),array('class'=>'btn btn-success btn-md'));?>
    </div>
</div>

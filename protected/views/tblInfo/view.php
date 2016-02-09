<?php
/* @var $this TblInfoController */
/* @var $model TblInfo */

$this->breadcrumbs=array(
	'Tbl Infos'=>array('index'),
	$model->id_info,
);
?>
<div class="portlet box yellow">
<div class="portlet-title">
  <div class="caption">
	<i class="fa fa-pencil-square-o"></i> View Info #<?php echo $model->id_info; ?>  </div>
</div>

<div class="portlet-body">
<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
        'htmlOptions' => array('class'=> 'table table-bordered table-striped table-advance table-hover'),
	'attributes'=>array(
		'id_info',
		'unsur',
		'sub_unsur',
		'detail_sub_unsur',
                'persentase',
		'tiga_be',
		'tiga_ce',
		'tida_de',
		'empat_a',
		'empat_be',
		'empat_ce',
		'empat_de',
		'empat_e',
		'jenjang_pendidikan',
	),
)); ?><?php echo CHtml::link('<i class="icon-control-rewind"></i> Kembali',array('admin'),array('class'=>'btn btn-success btn-md'));?>
</div>
</div>
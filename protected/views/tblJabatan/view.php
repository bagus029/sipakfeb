<?php
/* @var $this TblJabatanController */
/* @var $model TblJabatan */

$this->breadcrumbs=array(
	'Tbl Jabatans'=>array('index'),
	$model->ID_JABATAN,
);
/*
$this->menu=array(
	array('label'=>'List TblJabatan', 'url'=>array('index')),
	array('label'=>'Create TblJabatan', 'url'=>array('create')),
	array('label'=>'Update TblJabatan', 'url'=>array('update', 'id'=>$model->ID_JABATAN)),
	array('label'=>'Delete TblJabatan', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->ID_JABATAN),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage TblJabatan', 'url'=>array('admin')),
);*/
?>
<div class="portlet box yellow">
<div class="portlet-title">
  <div class="caption">
	<i class="fa fa-pencil-square-o"></i> View Jabatan Dosen #<?php echo $model->NAMA_JABATAN; ?>  </div>
</div>

<div class="portlet-body">
<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
        'htmlOptions' => array('class'=> 'table table-bordered table-striped table-advance table-hover'),
	'attributes'=>array(
		'ID_JABATAN',
		'KODE_JABATAN',
		'NAMA_JABATAN',
	),
)); ?>
    
    <?php echo CHtml::link('<i class="icon-control-rewind"></i> Kembali',array('admin'),array('class'=>'btn btn-success btn-md'));?>
</div>
</div>
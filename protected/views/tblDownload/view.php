<?php
/* @var $this TblDownloadController */
/* @var $model TblDownload */

$this->breadcrumbs=array(
	'Tbl Downloads'=>array('index'),
	$model->id_download,
);
?>
<div class="portlet box yellow">
<div class="portlet-title">
    <div class="caption">
	<i class="fa fa-pencil-square-o"></i> Data Download #<?php echo $model->id_download; ?>  </div>
    </div>
    <div class="portlet-body">
<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
        'htmlOptions' => array('class'=> 'table table-bordered table-striped table-advance table-hover'),
	'attributes'=>array(
		'id_download',
		'nama_download',
		'lampiran_download',
		'keterangan_download',
		//'atktiv',
                array(
                    'label'=>'Status',
                    'type'=>'raw',
                    'value'=>CHtml::encode($model->ubahSt())
                ),
	),
)); ?><?php echo CHtml::link('<i class="icon-control-rewind"></i> Kembali',array('admin'),array('class'=>'btn btn-success btn-md'));?>
</div>
</div>
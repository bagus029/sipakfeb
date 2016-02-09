<?php
/* @var $this TblDokumenDosenController */
/* @var $model TblDokumenDosen */

$this->breadcrumbs=array(
	'DokumenKu'=>array('index'),
	$model->NIP_DOSEN,
);

?>
<div class="portlet box yellow">
<div class="portlet-title">
    <div class="caption">
	<i class="fa fa-pencil-square-o"></i> Dokumenku #<?php echo $model->NIP_DOSEN; ?>  </div>
    </div>
    <div class="portlet-body">
<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'ID_DOKUMEN',
		'NIP_DOSEN',
		'NAMA_DOKUMEN',
                'DOKUMEN',
		'KETERANGAN',
	),
)); ?>
</div>
</div> 
<?php echo CHtml::link('<i class="icon-plus"></i> Dokumen Dosen',array('/tblDokumenDosen/create&id_dosen='.$model->NIP_DOSEN),array('class'=>'btn btn-success btn-md'));?>
<?php
/* @var $this UnsurPenunjangController */
/* @var $model UnsurPenunjang */

$this->breadcrumbs=array(
	'Unsur Penunjangs'=>array('index'),
	$model->ID_UNSUR_PENUNJANG,
);

$this->menu=array(
	//array('label'=>'List UnsurPenunjang', 'url'=>array('index')),
	//array('label'=>'Create UnsurPenunjang', 'url'=>array('create')),
	array('label'=>'Update UnsurPenunjang', 'url'=>array('update', 'id'=>$model->ID_UNSUR_PENUNJANG)),
	array('label'=>'Delete UnsurPenunjang', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->ID_UNSUR_PENUNJANG),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Kembali','url'=>array('tblDosen/viewdosen&id='.$model->ID_DOSEN.'&pengajuan='.$model->PENGAJUAN_KE)),
        //array('label'=>'Manage UnsurPenunjang', 'url'=>array('admin')),
);
?>
<div class="portlet box yellow">
<div class="portlet-title">
  <div class="caption">
	<i class="fa fa-pencil-square-o"></i> View Unsur Penunjung <?php echo $model->ID_UNSUR_PENUNJANG; ?>  
  </div>
    <div class="actions">
        <?php echo CHtml::link('<i class="fa fa-plus"></i> Update',array('update', 'id'=>$model->ID_UNSUR_PENUNJANG),array('class'=>'btn btn-sm red'));?>    
        </div>  
        <div class="actions">
        <?php echo CHtml::link('<i class="fa fa-user"></i> Kembali', array('tblDosen/viewdosen&id='.$model->ID_DOSEN.'&pengajuan='.$model->PENGAJUAN_KE), array('class' => 'btn btn-sm green')); ?>    
        </div>
</div>

<div class="portlet-body">
<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'ID_UNSUR_PENUNJANG',
		'iDSUBUNPENUNJANG.SUBUNPENUNJANG',
                'PENGAJUAN_KE',
		'iDDOSEN.NAMA_DOSEN',
		'KEGIATAN_PENUNJANG',
		'TEMPAT_PENUNJANG',
		'TGL_KEG_PENUNJANG',
		'BUKTI_PENUNJANG',
                'KEDUDUKAN_SEBAGAI',
		'NILAI_PENUNJANG',
		'TGL_SUBMIT',
	),
)); ?>
</div>
</div>
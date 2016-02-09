<?php
/* @var $this UnsurPendidikanController */
/* @var $model UnsurPendidikan */

$this->breadcrumbs=array(
	'Unsur Pendidikan'=>array('index'),
	$model->ID_UNSUR_PEND,
);

$this->menu=array(
	//array('label'=>'List UnsurPendidikan', 'url'=>array('index')),
	//array('label'=>'Tambah Unsur Pendidikan', 'url'=>array('create')),
	array('label'=>'Update Unsur Pendidikan', 'url'=>array('update', 'id'=>$model->ID_UNSUR_PEND)),
	array('label'=>'Delete Unsur Pendidikan', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->ID_UNSUR_PEND),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Kembali','url'=>array('tblDosen/viewdosen&id='.$model->ID_DOSEN.'&pengajuan='.$model->PENGAJUAN_KE)),
        //array('label'=>'Manage UnsurPendidikan', 'url'=>array('admin')),
);
?>
<div class="portlet box yellow">
<div class="portlet-title">
  <div class="caption">
	<i class="fa fa-pencil-square-o"></i> View Unsur Pendidikan <?php echo $model->ID_UNSUR_PEND; ?> 
  </div>
  <div class="actions">
        <?php echo CHtml::link('<i class="fa fa-plus"></i> Update',array('update', 'id'=>$model->ID_UNSUR_PEND),array('class'=>'btn btn-sm red'));?>    
        </div>  
        <div class="actions">
        <?php echo CHtml::link('<i class="fa fa-user"></i> Kembali', array('tblDosen/viewdosen&id='.$model->ID_DOSEN.'&pengajuan='.$model->PENGAJUAN_KE), array('class' => 'btn btn-sm green')); ?>    
        </div>
</div>

<div class="portlet-body">
<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'ID_UNSUR_PEND',
		'iDSUBUNPEND.SUBUNPEND',
		'iDDOSEN.NAMA_DOSEN',
		'KEGIATAN_PENDIDIKAN',
		'TEMPAT_PENDIDIKAN',
		'TGL_KEGIATAN_PEND',
		'BUKTI_PENDIDIKAN',
		'NILAI_PENDIDIKAN',
		'TGL_SUBMIT',
		'PENGAJUAN_KE',
	),
)); ?>
</div>
</div>
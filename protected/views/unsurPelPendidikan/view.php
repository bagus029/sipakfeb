<?php
/* @var $this UnsurPelPendidikanController */
/* @var $model UnsurPelPendidikan */

$this->breadcrumbs=array(
	'Unsur Pelaksanaan Pendidikan'=>array('index'),
	$model->ID_UNSUR_PELPEND,
);

$this->menu=array(
	//array('label'=>'List UnsurPelPendidikan', 'url'=>array('index')),
	//array('label'=>'Create UnsurPelPendidikan', 'url'=>array('create')),
	array('label'=>'Update UnsurPelPendidikan', 'url'=>array('update', 'id'=>$model->ID_UNSUR_PELPEND)),
	array('label'=>'Delete UnsurPelPendidikan', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->ID_UNSUR_PELPEND),'confirm'=>'Are you sure you want to delete this item?')),
        array('label'=>'Kembali','url'=>array('tblDosen/viewdosen&id='.$model->ID_DOSEN.'&pengajuan='.$model->PENGAJUAN_KE)),
    //array('label'=>'Manage UnsurPelPendidikan', 'url'=>array('admin')),
);
?>
<div class="portlet box yellow">
<div class="portlet-title">
  <div class="caption">
	<i class="fa fa-pencil-square-o"></i> View Unsur Pendidikan <?php echo $model->ID_UNSUR_PELPEND; ?>  
  </div>
    <div class="actions">
        <?php echo CHtml::link('<i class="fa fa-plus"></i> Update',array('update', 'id'=>$model->ID_UNSUR_PELPEND),array('class'=>'btn btn-sm red'));?>    
        </div>  
        <div class="actions">
        <?php echo CHtml::link('<i class="fa fa-user"></i> Kembali', array('tblDosen/viewdosen&id='.$model->ID_DOSEN.'&pengajuan='.$model->PENGAJUAN_KE), array('class' => 'btn btn-sm green')); ?>    
        </div>
</div>

<div class="portlet-body">
<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'ID_UNSUR_PELPEND',
		'iDSUBPELPEND.SUBPELPEND',
		'iDDOSEN.NAMA_DOSEN',
		'KEGIATAN_PELPEND',
		'TEMPAT_PELPEND',
		'SEMESTER',
		'BUKTI_PELPEND',
		'NILAI_PELPEND',
		'TGL_SUBMIT',
	),
)); ?>
</div>
</div>
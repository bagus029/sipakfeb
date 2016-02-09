<?php
/* @var $this UnsurPenelitianController */
/* @var $model UnsurPenelitian */

$this->breadcrumbs=array(
	'Unsur Penelitians'=>array('index'),
	$model->ID_UNSUR_PENELITIAN,
);

$this->menu=array(
	//array('label'=>'List UnsurPenelitian', 'url'=>array('index')),
	//array('label'=>'Create UnsurPenelitian', 'url'=>array('create')),
	array('label'=>'Update UnsurPenelitian', 'url'=>array('update', 'id'=>$model->ID_UNSUR_PENELITIAN)),
	array('label'=>'Delete UnsurPenelitian', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->ID_UNSUR_PENELITIAN),'confirm'=>'Are you sure you want to delete this item?')),
        array('label'=>'Kembali','url'=>array('tblDosen/viewdosen&id='.$model->ID_DOSEN.'&pengajuan='.$model->PENGAJUAN_KE)),
    //array('label'=>'Manage UnsurPenelitian', 'url'=>array('admin')),
);
?>
<div class="portlet box yellow">
<div class="portlet-title">
  <div class="caption">
	<i class="fa fa-pencil-square-o"></i> View Unsur Pendidikan <?php echo $model->ID_UNSUR_PENELITIAN; ?>  
  </div>
    <div class="actions">
        <?php echo CHtml::link('<i class="fa fa-plus"></i> Update',array('update', 'id'=>$model->ID_UNSUR_PENELITIAN),array('class'=>'btn btn-sm red'));?>    
        </div>  
        <div class="actions">
        <?php echo CHtml::link('<i class="fa fa-user"></i> Kembali', array('tblDosen/viewdosen&id='.$model->ID_DOSEN.'&pengajuan='.$model->PENGAJUAN_KE), array('class' => 'btn btn-sm green')); ?>    
        </div>
</div>

<div class="portlet-body">
<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'ID_UNSUR_PENELITIAN',
		'iDSUBUNPENELITIAN.SUBUNPENELITIAN',
		'iDDOSEN.NAMA_DOSEN',
		'KEGIATAN_PENELITIAN',
		'TEMPAT_PENELITIAN',
		'TGL_PENELITIAN',
		'BUKTI_PENELITIAN',
		'NILAI_PENELITIAN',
		'TGL_SUBMIT',
	),
)); ?>
</div>
</div>
<?php
/* @var $this UnsurPengabdianController */
/* @var $model UnsurPengabdian */

$this->breadcrumbs=array(
	'Unsur Pengabdians'=>array('index'),
	$model->ID_UNSUR_PENGABDIAN,
);

$this->menu=array(
	//array('label'=>'List UnsurPengabdian', 'url'=>array('index')),
	//array('label'=>'Create UnsurPengabdian', 'url'=>array('create')),
	array('label'=>'Update UnsurPengabdian', 'url'=>array('update', 'id'=>$model->ID_UNSUR_PENGABDIAN)),
	array('label'=>'Delete UnsurPengabdian', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->ID_UNSUR_PENGABDIAN),'confirm'=>'Are you sure you want to delete this item?')),
        array('label'=>'Kembali','url'=>array('tblDosen/viewdosen&id='.$model->ID_DOSEN.'&pengajuan='.$model->PENGAJUAN_KE)),
    //array('label'=>'Manage UnsurPengabdian', 'url'=>array('admin')),
);
?>
<div class="portlet box yellow">
<div class="portlet-title">
  <div class="caption">
	<i class="fa fa-pencil-square-o"></i> View Unsur Pengabdian <?php echo $model->ID_UNSUR_PENGABDIAN; ?>  
  </div>
    <div class="actions">
        <?php echo CHtml::link('<i class="fa fa-plus"></i> Update',array('update', 'id'=>$model->ID_UNSUR_PENGABDIAN),array('class'=>'btn btn-sm red'));?>    
        </div>  
        <div class="actions">
        <?php echo CHtml::link('<i class="fa fa-user"></i> Kembali', array('tblDosen/viewdosen&id='.$model->ID_DOSEN.'&pengajuan='.$model->PENGAJUAN_KE), array('class' => 'btn btn-sm green')); ?>    
        </div>
</div>

<div class="portlet-body">
<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'ID_UNSUR_PENGABDIAN',                
                'iDSUBUNPENGAB.SUBUNPENGAB',
		'iDDOSEN.NAMA_DOSEN',
                'KEGIATAN_PENGABDIAN',
                'BENTUK_PENGABDIAN',
		'TEMPAT_PENGABDIAN',
		'TGL_PENGABDIAN',
		'BUKTI_PENGABDIAN',
		'NILAI_PENGABDIAN',
		'TGL_SUBMIT',
	),
)); ?>
</div>
</div>
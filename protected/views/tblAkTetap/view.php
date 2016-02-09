<?php
/* @var $this TblAkTetapController */
/* @var $model TblAkTetap 

$this->breadcrumbs=array(
	'Angka Kredit Tetap'=>array('index'),
	$model->ID_AK_TETAP,
);

$this->menu=array(
	//array('label'=>'List TblAkTetap', 'url'=>array('index')),
	//array('label'=>'Create TblAkTetap', 'url'=>array('create')),
	array('label'=>'Update Angka', 'url'=>array('update', 'id'=>$model->ID_AK_TETAP)),
	array('label'=>'Delete Angka', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->ID_AK_TETAP),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Kembali', 'url'=>array('tblDosen/viewaktetap','id'=>$model->ID_DOSEN)),
        //array('label'=>'Manage TblAkTetap', 'url'=>array('admin')),
);*/
?>
<div class="portlet box yellow">
<div class="portlet-title">
  <div class="caption">
	<i class="fa fa-pencil-square-o"></i>Angka Kredit Tetap #<?php echo $model->ID_AK_TETAP; ?></div>
        <div class="actions">
        <?php echo CHtml::link('<i class="fa fa-plus"></i> Update',array('update', 'id'=>$model->ID_AK_TETAP),array('class'=>'btn btn-sm red'));?>    
        </div>  
        <div class="actions">
        <?php echo CHtml::link('<i class="fa fa-user"></i> Kembali', array('tblDosen/viewaktetap','id'=>$model->ID_DOSEN), array('class' => 'btn btn-sm green')); ?>    
        </div>
</div>
<div class="portlet-body">
<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'ID_AK_TETAP',
		'iDAKUNSUR.AK_UNSUR',
		'iDDOSEN.NAMA_DOSEN',
		'ANGKA_LAMA',
		'ANGKA_BARU',
		'ANGKA_DIGUNAKAN',
		'ANGKA_LEBIHAN',
		'NO_SK',
		'TGL_SUBMIT',
	),
)); ?>
</div>
</div>
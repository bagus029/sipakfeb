<?php 
    $ajukan=Yii::app()->request->getParam('id');
    $iddos=Yii::app()->request->getParam('id_dosen');
?>
<div class="portlet box blue">
<div class="portlet-title">
  <div class="caption">
	<i class="fa fa-cogs"></i> Data Penunjang </div>
    <div class="actions">
        <?php echo CHtml::link('<i class="fa fa-plus"></i> Tambah', array('create&id_dosen='.$iddos.'&pengajuan='.$ajukan), array('class' => 'btn btn-sm green')); ?>    
        </div>  
    <div class="actions">
        <?php //echo CHtml::link('<i class="fa fa-user"></i> Exsport Kontak Personal All', array('Exsportall'), array('class' => 'btn btn-sm green')); ?>    </div>
</div>

<div class="portlet-body">
<div class="table-responsive">
<?php $this->widget('zii.widgets.grid.CGridView', array(
        'itemsCssClass' => 'table table-striped table-bordered dataTable',
	'id'=>'unsur-penunjang-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		//'ID_UNSUR_PENUNJANG',
		//'ID_SUBUNPENUNJANG',
		array(
			'name'=>'ID_SUBUNPENUNJANG',
                    'type'=>'html',
                    'value'=>'$data->iDSUBUNPENUNJANG->SUBUNPENUNJANG','sortable'=>true,
		),
		array(
                    'name'=>'ID_DOSEN',
                    'type'=>'html',
                    'value'=>'$data->iDDOSEN->NAMA_DOSEN','sortable'=>true,
                    //'filter'=>Chtml::listdata(TblUser::model()->findAll(),'id_user','idJabatan.jabatan')
                     ),
		'KEGIATAN_PENUNJANG',
		'TEMPAT_PENUNJANG',
		'TGL_KEG_PENUNJANG',
                'PENGAJUAN_KE',
				'BUKTI_PENUNJANG',
		'NILAI_PENUNJANG',
		/*
		'BUKTI_PENUNJANG',
		'NILAI_PENUNJANG',
		'TGL_SUBMIT',
		
		array(
			'class'=>'CButtonColumn',
		),*/
	),
)); ?>
</div>
</div>
</div>   
<?php 
    Yii::app()->clientScript->registerCssFile(Yii::app()->baseUrl.'/assets/bootstrap/css/bootstrap.min.css');    
    Yii::app()->clientScript->registerScriptFile(Yii::app()->baseUrl.'/assets/bootstrap/js/bootstrap.min.js'); 
?> 
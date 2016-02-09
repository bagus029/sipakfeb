<div class="portlet box blue">
<div class="portlet-title">
  <div class="caption">
	<i class="fa fa-cogs"></i> Manage Data Dosen  </div>
    <div class="actions">
        <?php echo CHtml::link('<i class="fa fa-plus"></i> Tambah',array('create2'),array('class'=>'btn btn-sm red'));?>    
        </div>  
    <div class="actions">
        <?php //echo CHtml::link('<i class="fa fa-user"></i> Exsport Kontak Personal All', array('Exsportall'), array('class' => 'btn btn-sm green')); ?>    </div>
</div>

<div class="portlet-body">
<div class="table-responsive">
<?php $this->widget('zii.widgets.grid.CGridView', array(
        'itemsCssClass' => 'table table-striped table-bordered table-condensed',
	'id'=>'tbl-dosen-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		//'ID_DOSEN',
                array('name'=>'NIP_DOSEN',
                    'type'=>'raw',
                    'header'=>'Nip Dosen',
                    'value'=>'CHtml::encode($data->NIP_DOSEN)',
                    'htmlOptions'=>array('width'=>'10%'),
                    ),
                'NAMA_DOSEN',
                array('name'=>'ID_JURUSAN',
                    'type'=>'html',
                    'value'=>'$data->iDJURUSAN->NAMA_JURUSAN','sortable'=>true,
                    'filter'=>Chtml::listdata(TblJurusan::model()->findAll(),'ID_JURUSAN','NAMA_JURUSAN')),
                array('name'=>'ID_JABATAN',
                    'type'=>'html',
                    'value'=>'$data->iDJABATAN->NAMA_JABATAN','sortable'=>true,
                    'filter'=>Chtml::listdata(TblJabatan::model()->findAll(),'ID_JABATAN','NAMA_JABATAN')),
                array('name'=>'ID_GOLONGAN',
                    'type'=>'html',
                    'value'=>'$data->iDGOLONGAN->GOLONGAN','sortable'=>true,
                    'filter'=>Chtml::listdata(TblGolongan::model()->findAll(),'ID_GOLONGAN','GOLONGAN')),
                'TGL_MASUK',
                'NO_KARPEG',
				'NIDN',
                /*'ID_GOLONGAN',
		'ID_JABATAN',
		'ID_STATUS_KEP',
		'TMP_LAHIR',
		'TGL_LAHIR',
		'J_KEL',
		'AGAMA',
		'ALAMAT',
		'TGL_MASUK',
		'FOTO',
		array(
                    'header'=>'Angka Kredit',
                    'type'=>'raw',
                    'value'=>'CHtml::link("Tambah",array("unsurPendidikan/create&id_dosen=$data->ID_DOSEN"),array("class"=>"btn btn-success btn-md"))',
                ),*/
		array(
			'class'=>'CButtonColumn',
                        'htmlOptions'=>array('width'=>'6%'),    
		),
	),
)); ?>
</div>
</div>
</div>   
<?php 
    Yii::app()->clientScript->registerCssFile(Yii::app()->baseUrl.'/assets/bootstrap/css/bootstrap.min.css');    
    Yii::app()->clientScript->registerScriptFile(Yii::app()->baseUrl.'/assets/bootstrap/js/bootstrap.min.js'); 
?> 
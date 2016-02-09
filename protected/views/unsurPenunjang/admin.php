<div class="module">
<?php
/* @var $this UnsurPenunjangController */
/* @var $model UnsurPenunjang */

$this->breadcrumbs=array(
	'Unsur Penunjangs'=>array('index'),
	'Manage',
);
?>
<div class="module-head">
	<h3>Unsur Penunjang</h3>
</div>
    <div class="module-body">
<?php $this->widget('zii.widgets.grid.CGridView', array(
        'itemsCssClass' => 'table table-striped table-bordered dataTable',
	'id'=>'unsur-penunjang-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'ID_UNSUR_PENUNJANG',
		'ID_SUBUNPENUNJANG',
		'ID_DOSEN',
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
		/*
		'BUKTI_PENUNJANG',
		'NILAI_PENUNJANG',
		'TGL_SUBMIT',
		*/
		array(
			'class'=>'CButtonColumn',
		),
	),
)); ?>
                <?php //echo CHtml::link('<i class="icon-plus"></i> Angka',array('create'),array('class'=>'btn btn-primary'));?>
</div>
</div>
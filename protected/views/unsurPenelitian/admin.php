<div class="module">
<?php
/* @var $this UnsurPenelitianController */
/* @var $model UnsurPenelitian */

$this->breadcrumbs=array(
	'Unsur Penelitians'=>array('index'),
	'Manage',
);
?>
<div class="module-head">
	<h3>Unsur Penelitian</h3>
</div>
    <div class="module-body">
<?php $this->widget('zii.widgets.grid.CGridView', array(
        'itemsCssClass' => 'table table-striped table-bordered dataTable',
	'id'=>'unsur-penelitian-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'ID_UNSUR_PENELITIAN',
		'ID_SUBUNPENELITIAN',
		'ID_DOSEN',
		'KEGIATAN_PENELITIAN',
		'TEMPAT_PENELITIAN',
		'TGL_PENELITIAN',
                'PENGAJUAN_KE',
                
		/*
		'BUKTI_PENELITIAN',
                'NILAI_PEER_REVIEW',
		'NILAI_PENELITIAN',
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
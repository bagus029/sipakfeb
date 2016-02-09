<div class="module">
<?php
/* @var $this UnsurPengabdianController */
/* @var $model UnsurPengabdian */

$this->breadcrumbs=array(
	'Unsur Pengabdians'=>array('index'),
	'Manage',
);
?>
<div class="module-head">
	<h3>Unsur Pengabdian</h3>
</div>
    <div class="module-body">
<?php $this->widget('zii.widgets.grid.CGridView', array(
        'itemsCssClass' => 'table table-striped table-bordered dataTable',
	'id'=>'unsur-pengabdian-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'ID_SUBUNPENGAB',
		'ID_DOSEN',
		'ID_UNSUR_PENGABDIAN',
		'KEGIATAN_PENGABDIAN',
		'TEMPAT_PENGABDIAN',
		'TGL_PENGABDIAN',
                'PENGAJUAN_KE',
		/*
		'BUKTI_PENGABDIAN',
		'NILAI_PENGABDIAN',
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
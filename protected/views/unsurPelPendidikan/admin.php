<div class="module">
<?php
/* @var $this UnsurPelPendidikanController */
/* @var $model UnsurPelPendidikan */

$this->breadcrumbs=array(
	'Unsur Pel Pendidikans'=>array('index'),
	'Manage',
);
?>
<div class="module-head">
	<h3>Unsur Pelaksanaan Pendidikan</h3>
</div>
    <div class="module-body">
<?php $this->widget('zii.widgets.grid.CGridView', array(
        'itemsCssClass' => 'table table-striped table-bordered dataTable',
	'id'=>'unsur-pel-pendidikan-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'ID_UNSUR_PELPEND',
                'PENGAJUAN_KE',
		'ID_SUBPELPEND',
		'ID_DOSEN',
		'KEGIATAN_PELPEND',
		'TEMPAT_PELPEND',
		'SEMESTER',
		'BUKTI_PELPEND',
		/*'NILAI_PELPEND',
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
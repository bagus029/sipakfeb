<?php
/* @var $this UnsurPendidikanController */
/* @var $model UnsurPendidikan */

$this->breadcrumbs=array(
	'Unsur Pendidikans'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'List UnsurPendidikan', 'url'=>array('index')),
	array('label'=>'Create UnsurPendidikan', 'url'=>array('create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#unsur-pendidikan-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Manage Unsur Pendidikans</h1>

<p>
You may optionally enter a comparison operator (<b>&lt;</b>, <b>&lt;=</b>, <b>&gt;</b>, <b>&gt;=</b>, <b>&lt;&gt;</b>
or <b>=</b>) at the beginning of each of your search values to specify how the comparison should be done.
</p>

<?php echo CHtml::link('Advanced Search','#',array('class'=>'search-button')); ?>
<div class="search-form" style="display:none">
<?php $this->renderPartial('_search',array(
	'model'=>$model,
)); ?>
</div><!-- search-form -->

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'unsur-pendidikan-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'ID_UNSUR_PEND',
		'ID_SUBUNPEND',
		'ID_DOSEN',
		'KEGIATAN_PENDIDIKAN',
		'TEMPAT_PENDIDIKAN',
		'TGL_KEGIATAN_PEND',
		/*
		'BUKTI_PENDIDIKAN',
		'NILAI_PENDIDIKAN',
		'TGL_SUBMIT',
		'PENGAJUAN_KE',
		*/
		array(
			'class'=>'CButtonColumn',
		),
	),
)); ?>

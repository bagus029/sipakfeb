<?php
/* @var $this TblKeluargaController */
/* @var $model TblKeluarga */

$this->breadcrumbs=array(
	'Tbl Keluargas'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'List TblKeluarga', 'url'=>array('index')),
	array('label'=>'Create TblKeluarga', 'url'=>array('create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#tbl-keluarga-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Manage Tbl Keluargas</h1>

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
	'id'=>'tbl-keluarga-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'ID_KELUARGA',
		'ID_STATUS',
		'ID_DOSEN',
		'NAMA_KELUARGA',
		'TGL_LAHIR',
		'TMP_LAHIR',
		/*
		'TGL_NIKAH',
		'TGL_CERAI_MENINGGAL',
		'PEKERJAAN',
		'ALAMAT_KELUARGA',
		*/
		array(
			'class'=>'CButtonColumn',
		),
	),
)); ?>

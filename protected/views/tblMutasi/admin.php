<?php
/* @var $this TblMutasiController */
/* @var $model TblMutasi */

$this->breadcrumbs=array(
	'Tbl Mutasis'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'List TblMutasi', 'url'=>array('index')),
	array('label'=>'Create TblMutasi', 'url'=>array('create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#tbl-mutasi-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Manage Tbl Mutasis</h1>

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
	'id'=>'tbl-mutasi-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'ID_MUTASI',
		'ID_DOSEN',
		'JABTAN_LAMA',
		'UNIT_KERJA_LAMA',
		'TMT_LAMA',
		'JABATAN_BARU',
		/*
		'UNIT_KERJA_BARU',
		'TMT_BARU',
		*/
		array(
			'class'=>'CButtonColumn',
		),
	),
)); ?>

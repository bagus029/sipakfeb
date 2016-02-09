<?php
/* @var $this TblGajiController */
/* @var $model TblGaji */

$this->breadcrumbs=array(
	'Tbl Gajis'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'List TblGaji', 'url'=>array('index')),
	array('label'=>'Create TblGaji', 'url'=>array('create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#tbl-gaji-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Manage Tbl Gajis</h1>

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
	'id'=>'tbl-gaji-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'ID_GAJI',
		'ID_DOSEN',
		'TGL_GAJIAN',
		'GAJI_POKOK',
		array(
			'class'=>'CButtonColumn',
		),
	),
)); ?>

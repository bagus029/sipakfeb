<?php
/* @var $this TblCutiController */
/* @var $model TblCuti */

$this->breadcrumbs=array(
	'Tbl Cutis'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'List TblCuti', 'url'=>array('index')),
	array('label'=>'Create TblCuti', 'url'=>array('create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#tbl-cuti-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Manage Tbl Cutis</h1>

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
	'id'=>'tbl-cuti-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'ID_CUTI',
		'ID_DOSEN',
		'JENIS_CUTI',
		'MULAI_CUTI',
		'AKHIR_CUTI',
		'KET_CUTI',
		array(
			'class'=>'CButtonColumn',
		),
	),
)); ?>

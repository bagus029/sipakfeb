<div class="portlet box blue">
<div class="portlet-title">
  <div class="caption">
	<i class="fa fa-cogs"></i> Jumlah Angka Kredit Kumulatif Paling Rendah  </div>
    <div class="actions">
<?php echo CHtml::link('<i class="fa fa-plus"></i> Tambah',array('create'),array('class'=>'btn btn-sm red')); ?>
<div class="actions">
<?php // $this->renderPartial('_search',array(	'model'=>$model,)); ?>
</div>
</div>
</div>
<!-- search-form -->

<div class="portlet-body">
<div class="table-responsive">
<?php $this->widget('zii.widgets.grid.CGridView', array(
        'itemsCssClass' => 'table table-striped table-bordered table-hover dataTable no-footer',
	'id'=>'tbl-persen-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'id_persen',
		'jabatan',
		'kualifikasi_akad',
		'pel_pend',
		'pel_pen',
		'pel_peng',
		/*
		'unsur_penunjang',
		*/
		array(
			'class'=>'CButtonColumn',
		),
	),
)); ?>
</div>
</div>
</div>
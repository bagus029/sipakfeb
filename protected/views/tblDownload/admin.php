<div class="portlet box blue">
<div class="portlet-title">
  <div class="caption">
	<i class="fa fa-cogs"></i> Kelola File Download  </div>
    <div class="actions">
        <?php echo CHtml::link('<i class="fa fa-plus"></i> Tambah',array('create'),array('class'=>'btn btn-sm red'));?>    </div>  
    <div class="actions">
        <?php //echo CHtml::link('<i class="fa fa-user"></i> Exsport Kontak Personal All', array('Exsportall'), array('class' => 'btn btn-sm green')); ?>    </div>
</div>

<div class="portlet-body">
<div class="table-responsive">
<?php $this->widget('zii.widgets.grid.CGridView', array(
        'itemsCssClass' => 'table table-striped table-bordered table-condensed',
	'id'=>'tbl-download-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'id_download',
                'nama_download',
		'lampiran_download',
		'keterangan_download',
		//'atktiv',
                 array('name'=>'atktiv',
                    'type'=>'raw',
                    'header'=>'Status',
                    'value'=>'CHtml::encode($data->ubahSt())',
                    //'htmlOptions'=>array('width'=>'10%'),
                    ),
                array(
			'class'=>'CButtonColumn',
                        'htmlOptions'=>array('width'=>'6%'),
		),
	),
)); ?>
</div>
</div>
</div>
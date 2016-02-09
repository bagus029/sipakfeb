<div class="portlet box blue">
<div class="portlet-title">
  <div class="caption">
	<i class="fa fa-cogs"></i> Jabatan Dosen  </div>
    <div class="actions">
        <?php echo CHtml::link('<i class="fa fa-plus"></i> Tambah',array('create'),array('class'=>'btn btn-sm red'));?>    </div>  
    <div class="actions">
        <?php //echo CHtml::link('<i class="fa fa-user"></i> Exsport Kontak Personal All', array('Exsportall'), array('class' => 'btn btn-sm green')); ?>    </div>
</div>

<div class="portlet-body">
<div class="table-responsive">
<?php $this->widget('ext.GroupGridView', array(
        'itemsCssClass' => 'table table-striped table-bordered dataTable',
	'id'=>'tbl-jabatan-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
                array('name'=>'ID_JABATAN',
                         'type'=>'raw',
                         'header'=>'Id',
                         'value'=>'CHtml::encode($data->ID_JABATAN)',
                         
                         ),
                array('name'=>'KODE_JABATAN',
                         'type'=>'raw',
                         'header'=>'Kode Jabatan',
                         'value'=>'CHtml::encode($data->KODE_JABATAN)',
                         
                         ),
                array('name'=>'NAMA_JABATAN',
                         'type'=>'raw',
                         'header'=>'Jabatan',
                         'value'=>'CHtml::encode($data->NAMA_JABATAN)',
                         
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
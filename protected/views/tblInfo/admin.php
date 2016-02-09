<div class="portlet box blue">
<div class="portlet-title">
  <div class="caption">
	<i class="fa fa-cogs"></i> Info Angka  </div>
    <div class="actions">
        <?php echo CHtml::link('<i class="fa fa-plus"></i> Tambah',array('create'),array('class'=>'btn btn-sm red'));?>    </div>  
    <div class="actions">
        <?php //echo CHtml::link('<i class="fa fa-user"></i> Exsport Kontak Personal All', array('Exsportall'), array('class' => 'btn btn-sm green')); ?>    </div>
</div>

<div class="portlet-body">
<div class="table-responsive">
<?php $this->widget('ext.GroupGridView', array('itemsCssClass' => 'table table-striped table-bordered table-hover dataTable no-footer',
	'id'=>'tbl-info-grid',
        //'mergeColumns' => array('tiga_ce','tida_de','empat_a','empat_be','empat_ce','empat_de','empat_e'),
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		//'id_info',
                array(               
                    'name'=>'jenjang_pendidikan',
                    'type'=>'raw',
                    //'filter'=>CHtml::listData($model->ubahJenjang('jenjang_pendidikan')),
                    'value'=>'CHtml::encode($data->ubahJenjang())',                                 
                    ),
		array(               
                    'name'=>'unsur',
                    'type'=>'raw',
                    'value'=>'CHtml::encode($data->ubahUnsur())',                                 
                    ),
                array('name'=>'sub_unsur',
                    'type'=>'raw',
                    'header'=>'Sub Unsur',
                    'value'=>'CHtml::encode($data->sub_unsur)',
                    'htmlOptions'=>array('width'=>'15%'),
                    ),
		//'sub_unsur',
		'detail_sub_unsur',
                array('name'=>'persentase',
                    'type'=>'raw',
                    'header'=>'Persentase',
                    'value'=>'CHtml::encode($data->persentase)',
                    'htmlOptions'=>array('width'=>'8%'),
                    ),
                'tiga_be',
		'tiga_ce',
		'tida_de',
		'empat_a',
		'empat_be',
		'empat_ce',
		'empat_de',
		'empat_e',
			
		array(
			'class'=>'CButtonColumn',
                        'htmlOptions'=>array('width'=>'6%'),
		),
	),
)); ?>
</div>
</div>
</div> 
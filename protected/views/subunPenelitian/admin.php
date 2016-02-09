<div class="portlet box blue">
<div class="portlet-title">
  <div class="caption">
	<i class="fa fa-cogs"></i> Sub Unsur Penelitian  </div>
    <div class="actions">
        <?php echo CHtml::link('<i class="fa fa-plus"></i> Tambah',array('create'),array('class'=>'btn btn-sm red'));?>    </div>  
    <div class="actions">
        <?php //echo CHtml::link('<i class="fa fa-user"></i> Exsport Kontak Personal All', array('Exsportall'), array('class' => 'btn btn-sm green')); ?>    </div>
</div>

<div class="portlet-body">
<div class="table-responsive">
<?php $this->widget('ext.GroupGridView', array(
        'itemsCssClass' => 'table table-striped table-bordered dataTable',
	'id'=>'subun-penelitian-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
                    array('name'=>'ID_SUBUNPENELITIAN',
                         'type'=>'raw',
                         'header'=>'Id',
                         'value'=>'CHtml::encode($data->ID_SUBUNPENELITIAN)',
                         //'htmlOptions'=>array('width'=>'5%'),
                         ),
                    array('name'=>'SUBUNPENELITIAN',
                         'type'=>'raw',
                         'header'=>'Sub Unsur Penelitian',
                         'value'=>'CHtml::encode($data->SUBUNPENELITIAN)',
                         //'htmlOptions'=>array('width'=>'25%'),
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
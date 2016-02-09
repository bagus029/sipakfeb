<div class="portlet box blue">
<div class="portlet-title">
  <div class="caption">
	<i class="fa fa-cogs"></i> Sub Unsur Penunjang  </div>
    <div class="actions">
        <?php echo CHtml::link('<i class="fa fa-plus"></i> Tambah',array('create'),array('class'=>'btn btn-sm red'));?>    </div>  
    <div class="actions">
        <?php //echo CHtml::link('<i class="fa fa-user"></i> Exsport Kontak Personal All', array('Exsportall'), array('class' => 'btn btn-sm green')); ?>    </div>
</div>

<div class="portlet-body">
<div class="table-responsive">
<?php $this->widget('zii.widgets.grid.CGridView', array(
        'itemsCssClass' => 'table table-striped table-bordered dataTable',
	'id'=>'subun-penunjang-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
                    array('name'=>'ID_SUBUNPENUNJANG',
                         'type'=>'raw',
                         'header'=>'Id',
                         'value'=>'CHtml::encode($data->ID_SUBUNPENUNJANG)',
                        // 'htmlOptions'=>array('width'=>'5%'),
                         ),
                    array('name'=>'SUBUNPENUNJANG',
                         'type'=>'raw',
                         'header'=>'Sub Unsur Penunjang',
                         'value'=>'CHtml::encode($data->SUBUNPENUNJANG)',
                       //  'htmlOptions'=>array('width'=>'25%'),
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
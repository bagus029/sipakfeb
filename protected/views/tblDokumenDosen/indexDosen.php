<div class="portlet box blue">
<div class="portlet-title">
  <div class="caption">
	<i class="fa fa-cogs"></i> Dokumenku  </div>
    <div class="actions">
        <?php echo CHtml::link('<i class="fa fa-plus"></i> Tambah',array('create'),array('class'=>'btn btn-sm red'));?>    </div>  
    <div class="actions">
        <?php //echo CHtml::link('<i class="fa fa-user"></i> Exsport Kontak Personal All', array('Exsportall'), array('class' => 'btn btn-sm green')); ?>    </div>
</div>

<div class="portlet-body">
<div class="table-responsive">
<?php $this->widget('zii.widgets.grid.CGridView', array(
        'itemsCssClass' => 'table table-striped table-bordered dataTable',
	'id'=>'tbl-dokumen-dosen-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'ID_DOKUMEN',
		'NIP_DOSEN',
		'NAMA_DOKUMEN',
		'KETERANGAN',
                'DOKUMEN',
                array(
                        'class'=>'CButtonColumn',
                        'template'=>'{reg}',
                        'header'=>'Download',
                        'buttons'=>array(
                                'reg' => array(
                                        'label'=>'Download Dokumen',
                                        'url'=>'("dokumen/$data->NIP_DOSEN/$data->DOKUMEN")',
                                        //'imageUrl'=>Yii::app()->request->baseUrl.'/assets/61f1fe9/gridview/delete.png',
                                ),
                        ),
                        'htmlOptions'=>array('width'=>60),
                ),
		array(
			'class'=>'CButtonColumn',
                        'htmlOptions'=>array('width'=>'8%'),
		),
	),
)); ?>
</div>
</div>
</div>  
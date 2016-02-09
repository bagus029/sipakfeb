<div class="portlet box blue">
<div class="portlet-title">
  <div class="caption">
	<i class="fa fa-cogs"></i> Silahkan Download  </div>
    </div>

<div class="portlet-body">
<div class="table-responsive">
<?php $this->widget('zii.widgets.grid.CGridView', array(
        'itemsCssClass' => 'table table-striped table-bordered table-condensed',
	'id'=>'tbl-download-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		//'id_download',
        'nama_download',
		//'lampiran_download',
		'keterangan_download',
                array(
                    'header'=>'Lihat',
                    'type'=>'raw',
                    'value'=>'CHtml::link("Lihat",array("tampilpdf&id=$data->id_download"),array("class"=>"btn btn-success btn-md"))',
                    'htmlOptions'=>array('width'=>'9%'),
                    ),
                    array(
                        'class'=>'CButtonColumn',
                        'template'=>'{reg}',
                        'header'=>'Aksi',
                        'buttons'=>array(
                                'reg' => array(
                                        'label'=>'Download',
                                        'url'=>'("dokumen/download/$data->lampiran_download")',
                                        'class'=>'btn btn-success btn-md',
                                        //'imageUrl'=>Yii::app()->request->baseUrl.'/assets/61f1fe9/gridview/delete.png',
                                ),
                        ),
                        'htmlOptions'=>array('width'=>60),
                ),
				
				
                
                
	),
)); ?>
</div>
</div>
</div>
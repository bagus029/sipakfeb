<div class="portlet box blue">
<div class="portlet-title">
  <div class="caption">
	<i class="fa fa-cogs"></i> Jumlah Angka Kredit Komulatif Paling Rendah Dengan Pendidikan Doktor (S3)  </div>
    <div class="actions">
        <?php //echo CHtml::link('<i class="fa fa-plus"></i> Tambah',array('create'),array('class'=>'btn btn-sm red'));?>    </div>  
    <div class="actions">
        <?php //echo CHtml::link('<i class="fa fa-user"></i> Exsport Kontak Personal All', array('Exsportall'), array('class' => 'btn btn-sm green')); ?>    </div>
</div>

<div class="portlet-body">
<div class="table-responsive">
<?php $this->widget('ext.GroupGridView', array('itemsCssClass' => 'table table-striped table-bordered table-hover dataTable no-footer',
	'id'=>'tbl-info-grid',
        //'mergeColumns' => array('tiga_ce','tida_de','empat_a','empat_be','empat_ce','empat_de','empat_e'),
	'dataProvider'=>$model->search(),
	//'filter'=>$model,
	'columns'=>array(
		//'id_info',
                array(               
                    'name'=>'jenjang_pendidikan',
                    'type'=>'raw',
                    'value'=>'CHtml::encode($data->ubahJenjang())',  
                    'htmlOptions'=>array('width'=>'5%'),
                    ),
		array(               
                    'name'=>'unsur',
                    'type'=>'raw',
                    'value'=>'CHtml::encode($data->ubahUnsur())',
                    'htmlOptions'=>array('width'=>'15%'),
                    ),
		array('name'=>'sub_unsur',
                    'type'=>'raw',
                    'header'=>'Sub Unsur',
                    'value'=>'CHtml::encode($data->sub_unsur)',
                    'htmlOptions'=>array('width'=>'15%'),
                    ),
                array('name'=>'detail_sub_unsur',
                    'type'=>'raw',
                    'header'=>'Detail Sub Unsur',
                    'value'=>'CHtml::encode($data->detail_sub_unsur)',
                    'htmlOptions'=>array('width'=>'15%'),
                    ),
                array('name'=>'persentase',
                    'type'=>'raw',
                    'header'=>'persentase',
                    'footer'=>'<b> Nilai AK :</b>',
                    'value'=>'CHtml::encode($data->persentase)',
                    'htmlOptions'=>array('width'=>'5%')
                    ),
                array('class'=>'ext.TotalColumn',
                    'name'=>'tiga_be',
                    'filter'=>'',
                    'htmlOptions'=>array('style'=>'text-align:right;width:30px;'),
                    'output'=>'Yii::app()->numberFormatter->formatCurrency($value,"")',
                    'type'=>'raw',
                    'header'=>'III B',
                    'footer'=>true,
                    'value'=>'CHtml::encode($data->tiga_be)',
                    'footerHtmlOptions'=>array(
                    'style'=>'text-align: right; padding-right: 15px;'
                    ),
                    ),
		array('class'=>'ext.TotalColumn',
                    'name'=>'ANGKA_LAMA',
                    'filter'=>'',
                    'htmlOptions'=>array('style'=>'text-align:right;width:30px;'),
                    'output'=>'Yii::app()->numberFormatter->formatCurrency($value,"")',
                    'type'=>'raw',
                    'header'=>'III C',
                    'footer'=>true,
                    'value'=>'CHtml::encode($data->tiga_ce)',
                    'footerHtmlOptions'=>array(
                    'style'=>'text-align: right; padding-right: 15px;'
                    ),
                    ),
		array('class'=>'ext.TotalColumn',
                    'name'=>'ANGKA_LAMA',
                    'filter'=>'',
                    'htmlOptions'=>array('style'=>'text-align:right;width:30px;'),
                    'output'=>'Yii::app()->numberFormatter->formatCurrency($value,"")',
                    'type'=>'raw',
                    'header'=>'III D',
                    'footer'=>true,
                    'value'=>'CHtml::encode($data->tida_de)',
                    'footerHtmlOptions'=>array(
                    'style'=>'text-align: right; padding-right: 15px;'
                    ),
                    ),
		array('class'=>'ext.TotalColumn',
                    'name'=>'ANGKA_LAMA',
                    'filter'=>'',
                    'htmlOptions'=>array('style'=>'text-align:right;width:30px;'),
                    'output'=>'Yii::app()->numberFormatter->formatCurrency($value,"")',
                    'type'=>'raw',
                    'header'=>'IV A',
                    'footer'=>true,
                    'value'=>'CHtml::encode($data->empat_a)',
                    'footerHtmlOptions'=>array(
                    'style'=>'text-align: right; padding-right: 15px;'
                    ),
                    ),
		array('class'=>'ext.TotalColumn',
                    'name'=>'ANGKA_LAMA',
                    'filter'=>'',
                    'htmlOptions'=>array('style'=>'text-align:right;width:30px;'),
                    'output'=>'Yii::app()->numberFormatter->formatCurrency($value,"")',
                    'type'=>'raw',
                    'header'=>'IV B',
                    'footer'=>true,
                    'value'=>'CHtml::encode($data->empat_be)',
                    'footerHtmlOptions'=>array(
                    'style'=>'text-align: right; padding-right: 15px;'
                    ),
                    ),
		array('class'=>'ext.TotalColumn',
                    'name'=>'ANGKA_LAMA',
                    'filter'=>'',
                    'htmlOptions'=>array('style'=>'text-align:right;width:30px;'),
                    'output'=>'Yii::app()->numberFormatter->formatCurrency($value,"")',
                    'type'=>'raw',
                    'header'=>'IV C',
                    'footer'=>true,
                    'value'=>'CHtml::encode($data->empat_ce)',
                    'footerHtmlOptions'=>array(
                    'style'=>'text-align: right; padding-right: 15px;'
                    ),
                    ),
		array('class'=>'ext.TotalColumn',
                    'name'=>'ANGKA_LAMA',
                    'filter'=>'',
                    'htmlOptions'=>array('style'=>'text-align:right;width:30px;'),
                    'output'=>'Yii::app()->numberFormatter->formatCurrency($value,"")',
                    'type'=>'raw',
                    'header'=>'IV D',
                    'footer'=>true,
                    'value'=>'CHtml::encode($data->empat_de)',
                    'footerHtmlOptions'=>array(
                    'style'=>'text-align: right; padding-right: 15px;'
                    ),
                    ),
		array('class'=>'ext.TotalColumn',
                    'name'=>'ANGKA_LAMA',
                    'filter'=>'',
                    'htmlOptions'=>array('style'=>'text-align:right;width:30px;'),
                    'output'=>'Yii::app()->numberFormatter->formatCurrency($value,"")',
                    'type'=>'raw',
                    'header'=>'IV E',
                    'footer'=>true,
                    'value'=>'CHtml::encode($data->empat_e)',
                    'footerHtmlOptions'=>array(
                    'style'=>'text-align: right; padding-right: 15px;'
                    ),
                    ),
		),
)); ?>
</div>
</div>
</div> 
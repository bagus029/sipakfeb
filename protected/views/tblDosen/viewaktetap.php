<div class="portlet box yellow">
<div class="portlet-title">
  <div class="caption">
	<i class="fa fa-pencil-square-o"></i> View Dosen #<?php echo $model->NAMA_DOSEN; ?>  </div>
</div>

<div class="portlet-body">
    <div class="module-body">
	<div class="block-content collapse in">
        
	<ul class="nav nav-tabs">
	<li class="active"><a href="#tab1" data-toggle="tab">View</a></li>
	<li><a href="#tab2" data-toggle="tab">AK Tetap III B</a></li>
	<li><a href="#tab3" data-toggle="tab">AK Tetap III C</a></li>
        <li><a href="#tab4" data-toggle="tab">AK Tetap III D</a></li>
        <li><a href="#tab5" data-toggle="tab">AK Tetap IV A</a></li>
        <li><a href="#tab6" data-toggle="tab">AK Tetap IV B</a></li>
        <li><a href="#tab7" data-toggle="tab">AK Tetap IV C</a></li>
        <li><a href="#tab8" data-toggle="tab">AK Tetap IV D</a></li>
        <li><a href="#tab9" data-toggle="tab">AK Tetap IV E</a></li>
        </ul>
            <div class="tab-content">
                <div class="tab-pane fade in active" id="tab1">
							<?php $this->widget('zii.widgets.CDetailView', array(
                                                                                'data'=>$model,
                                                                                'htmlOptions' => array('class'=> 'table table-bordered table-striped table-advance table-hover'),
                                                                                'attributes'=>array(
                                                                                        'ID_DOSEN',
                                                                                        'NIP_DOSEN',
                                                                                        'NAMA_DOSEN',
                                                                                        'NIDN',
                                                                                        'iDJURUSAN.NAMA_JURUSAN',
                                                                                        'PENDIDIKAN_TERTINGGI',
                                                                                                                                                                        ),
                                                                        )); ?>
                                                        
							</div>
							<div class="tab-pane fade" id="tab2">
                                                        <?php echo CHtml::link('<i class="icon-plus"></i> Angka Kredit Tetap III B',array('/tblAkTetap/create&id_dosen='.$model->ID_DOSEN.'&jenjang=III B'),array('class'=>'btn btn-success btn-md'));?>
							<?php $this->widget('zii.widgets.grid.CGridView', array(
                                                                'id'=>'tbl-ak-tetap-grid',
                                                                'dataProvider'=>$IIIB,
                                                                //'filter'=>$model,
                                                                'columns'=>array(
                                                                        //'ID_AK_TETAP',
                                                                        'iDDOSEN.NAMA_DOSEN',
                                                                        array('name'=>'iDAKAUNSUR.AK_UNSUR',
                                                                                     'type'=>'raw',
                                                                                     'header'=>'Kegiatan',
                                                                                     'footer'=>'<b> Nilai Total :</b>',
                                                                                     'value'=>'CHtml::encode($data->iDAKUNSUR->AK_UNSUR)',
                                                                                     //'htmlOptions'=>array('width'=>'15%'),
                                                                                     ),
                                                                        array('class'=>'ext.TotalColumn',
                                                                                    'name'=>'ANGKA_LAMA',
                                                                                    'filter'=>'',
                                                                                    'htmlOptions'=>array('style'=>'text-align:right;width:20px'),
                                                                                    'output'=>'Yii::app()->numberFormatter->formatCurrency($value,"")',
                                                                                    'type'=>'raw',
                                                                                    'header'=>'Angka Lama',
                                                                                    'footer'=>true,
                                                                                    'value'=>'CHtml::encode($data->ANGKA_LAMA)',
                                                                                    'footerHtmlOptions'=>array(
                                                                                    'style'=>'text-align: right; padding-right: 5px;'
                                                                                    ),
                                                                                ),
                                                                    
                                                                        array('class'=>'ext.TotalColumn',
                                                                                    'name'=>'ANGKA_BARU',
                                                                                    'filter'=>'',
                                                                                    'htmlOptions'=>array('style'=>'text-align:right;width:20px'),
                                                                                    'output'=>'Yii::app()->numberFormatter->formatCurrency($value,"")',
                                                                                    'type'=>'raw',
                                                                                    'header'=>'Angka Baru',
                                                                                    'footer'=>true,
                                                                                    'value'=>'CHtml::encode($data->ANGKA_BARU)',
                                                                                    'footerHtmlOptions'=>array(
                                                                                    'style'=>'text-align: right; padding-right: 5px;'
                                                                                    ),
                                                                                ),
                                                                        array('class'=>'ext.TotalColumn',
                                                                                    'name'=>'ANGKA_DIGUNAKAN',
                                                                                    'filter'=>'',
                                                                                    'htmlOptions'=>array('style'=>'text-align:right;width:20px'),
                                                                                    'output'=>'Yii::app()->numberFormatter->formatCurrency($value,"")',
                                                                                    'type'=>'raw',
                                                                                    'header'=>'Angka Digunakan',
                                                                                    'footer'=>true,
                                                                                    'value'=>'CHtml::encode($data->ANGKA_DIGUNAKAN)',
                                                                                    'footerHtmlOptions'=>array(
                                                                                    'style'=>'text-align: right; padding-right: 5px;'
                                                                                    ),
                                                                                ),
                                                                        array('class'=>'ext.TotalColumn',
                                                                                    'name'=>'ANGKA_LEBIHAN',
                                                                                    'filter'=>'',
                                                                                    'htmlOptions'=>array('style'=>'text-align:right;width:20px'),
                                                                                    'output'=>'Yii::app()->numberFormatter->formatCurrency($value,"")',
                                                                                    'type'=>'raw',
                                                                                    'header'=>'Angka Lebihan',
                                                                                    'footer'=>true,
                                                                                    'value'=>'CHtml::encode($data->ANGKA_LEBIHAN)',
                                                                                    'footerHtmlOptions'=>array(
                                                                                    'style'=>'text-align: right; padding-right: 5px;'
                                                                                    ),
                                                                                ),
                                                                        'NO_SK',
                                                                        array(
                                                                                    'class'=>'CButtonColumn',
                                                                                    'template' =>'{view}{delete}{update}',
                                                                                    'buttons' => array(
                                                                                    'view' => array(
                                                                                                'label'=>'view',
                                                                                                'url'=>'Yii::app()->createUrl("/tblAkTetap/view", array("id" => $data->ID_AK_TETAP))',
                                                                                                ),
                                                                                    'delete' => array(
                                                                                                'label'=>'delete',
                                                                                                'url'=>'Yii::app()->createUrl("/tblAkTetap/delete", array("id" => $data->ID_AK_TETAP))',
                                                                                                ),
                                                                                    'update'=> array(
                                                                                                'label'=>'update',
                                                                                                'url'=>'Yii::app()->createUrl("/tblAkTetap/update", array("id"=>$data->ID_AK_TETAP))'
                                                                                                     ),
                                                                                                   ),
                                                                                ),
                                                                ),
                                                        )); ?>
							</div>
							<div class="tab-pane fade" id="tab3">
                                                        <?php echo CHtml::link('<i class="icon-plus"></i> Angka Kredit Tetap III C',array('/tblAkTetap/create&id_dosen='.$model->ID_DOSEN.'&jenjang=III C'),array('class'=>'btn btn-danger btn-md'));?>
							<?php $this->widget('zii.widgets.grid.CGridView', array(
                                                                'id'=>'tbl-ak-tetap-grid',
                                                                'dataProvider'=>$IIIC,
                                                                //'filter'=>$model,
                                                                'columns'=>array(
                                                                        //'ID_AK_TETAP',
                                                                        'iDDOSEN.NAMA_DOSEN',
                                                                        array('name'=>'iDAKAUNSUR.AK_UNSUR',
                                                                                     'type'=>'raw',
                                                                                     'header'=>'Tgl Kegiatan',
                                                                                     'footer'=>'<b> Nilai Total :</b>',
                                                                                     'value'=>'CHtml::encode($data->iDAKUNSUR->AK_UNSUR)',
                                                                                     //'htmlOptions'=>array('width'=>'15%'),
                                                                                     ),
                                                                        array('class'=>'ext.TotalColumn',
                                                                                    'name'=>'ANGKA_LAMA',
                                                                                    'filter'=>'',
                                                                                    'htmlOptions'=>array('style'=>'text-align:right;width:20px'),
                                                                                    'output'=>'Yii::app()->numberFormatter->formatCurrency($value,"")',
                                                                                    'type'=>'raw',
                                                                                    'header'=>'Angka Lama',
                                                                                    'footer'=>true,
                                                                                    'value'=>'CHtml::encode($data->ANGKA_LAMA)',
                                                                                    'footerHtmlOptions'=>array(
                                                                                    'style'=>'text-align: right; padding-right: 5px;'
                                                                                    ),
                                                                                ),
                                                                    
                                                                        array('class'=>'ext.TotalColumn',
                                                                                    'name'=>'ANGKA_BARU',
                                                                                    'filter'=>'',
                                                                                    'htmlOptions'=>array('style'=>'text-align:right;width:20px'),
                                                                                    'output'=>'Yii::app()->numberFormatter->formatCurrency($value,"")',
                                                                                    'type'=>'raw',
                                                                                    'header'=>'Angka Baru',
                                                                                    'footer'=>true,
                                                                                    'value'=>'CHtml::encode($data->ANGKA_BARU)',
                                                                                    'footerHtmlOptions'=>array(
                                                                                    'style'=>'text-align: right; padding-right: 5px;'
                                                                                    ),
                                                                                ),
                                                                        array('class'=>'ext.TotalColumn',
                                                                                    'name'=>'ANGKA_DIGUNAKAN',
                                                                                    'filter'=>'',
                                                                                    'htmlOptions'=>array('style'=>'text-align:right;width:20px'),
                                                                                    'output'=>'Yii::app()->numberFormatter->formatCurrency($value,"")',
                                                                                    'type'=>'raw',
                                                                                    'header'=>'Angka Digunakan',
                                                                                    'footer'=>true,
                                                                                    'value'=>'CHtml::encode($data->ANGKA_DIGUNAKAN)',
                                                                                    'footerHtmlOptions'=>array(
                                                                                    'style'=>'text-align: right; padding-right: 5px;'
                                                                                    ),
                                                                                ),
                                                                        array('class'=>'ext.TotalColumn',
                                                                                    'name'=>'ANGKA_LEBIHAN',
                                                                                    'filter'=>'',
                                                                                    'htmlOptions'=>array('style'=>'text-align:right;width:20px'),
                                                                                    'output'=>'Yii::app()->numberFormatter->formatCurrency($value,"")',
                                                                                    'type'=>'raw',
                                                                                    'header'=>'Angka Lebihan',
                                                                                    'footer'=>true,
                                                                                    'value'=>'CHtml::encode($data->ANGKA_LEBIHAN)',
                                                                                    'footerHtmlOptions'=>array(
                                                                                    'style'=>'text-align: right; padding-right: 5px;'
                                                                                    ),
                                                                                ),
                                                                        'NO_SK',
                                                                        array(
                                                                                    'class'=>'CButtonColumn',
                                                                                    'template' =>'{view}{delete}{update}',
                                                                                    'buttons' => array(
                                                                                    'view' => array(
                                                                                                'label'=>'view',
                                                                                                'url'=>'Yii::app()->createUrl("/tblAkTetap/view", array("id" => $data->ID_AK_TETAP))',
                                                                                                ),
                                                                                    'delete' => array(
                                                                                                'label'=>'delete',
                                                                                                'url'=>'Yii::app()->createUrl("/tblAkTetap/delete", array("id" => $data->ID_AK_TETAP))',
                                                                                                ),
                                                                                    'update'=> array(
                                                                                                'label'=>'update',
                                                                                                'url'=>'Yii::app()->createUrl("/tblAkTetap/update", array("id"=>$data->ID_AK_TETAP))'
                                                                                                     ),
                                                                                                   ),
                                                                                ),
                                                                ),
                                                        )); ?>
							</div>
                                                        <div class="tab-pane fade" id="tab4">
                                                           <?php echo CHtml::link('<i class="icon-plus"></i> Angka Kredit Tetap III D',array('/tblAkTetap/create&id_dosen='.$model->ID_DOSEN.'&jenjang=III D'),array('class'=>'btn btn-warning btn-md'));?>
                                                           <?php $this->widget('zii.widgets.grid.CGridView', array(
                                                                'id'=>'tbl-ak-tetap-grid',
                                                                'dataProvider'=>$IIID,
                                                                //'filter'=>$model,
                                                                'columns'=>array(
                                                                        //'ID_AK_TETAP',
                                                                        'iDDOSEN.NAMA_DOSEN',
                                                                        array('name'=>'iDAKAUNSUR.AK_UNSUR',
                                                                                     'type'=>'raw',
                                                                                     'header'=>'Tgl Kegiatan',
                                                                                     'footer'=>'<b> Nilai Total :</b>',
                                                                                     'value'=>'CHtml::encode($data->iDAKUNSUR->AK_UNSUR)',
                                                                                     //'htmlOptions'=>array('width'=>'15%'),
                                                                                     ),
                                                                        array('class'=>'ext.TotalColumn',
                                                                                    'name'=>'ANGKA_LAMA',
                                                                                    'filter'=>'',
                                                                                    'htmlOptions'=>array('style'=>'text-align:right;width:20px'),
                                                                                    'output'=>'Yii::app()->numberFormatter->formatCurrency($value,"")',
                                                                                    'type'=>'raw',
                                                                                    'header'=>'Angka Lama',
                                                                                    'footer'=>true,
                                                                                    'value'=>'CHtml::encode($data->ANGKA_LAMA)',
                                                                                    'footerHtmlOptions'=>array(
                                                                                    'style'=>'text-align: right; padding-right: 5px;'
                                                                                    ),
                                                                                ),
                                                                    
                                                                        array('class'=>'ext.TotalColumn',
                                                                                    'name'=>'ANGKA_BARU',
                                                                                    'filter'=>'',
                                                                                    'htmlOptions'=>array('style'=>'text-align:right;width:20px'),
                                                                                    'output'=>'Yii::app()->numberFormatter->formatCurrency($value,"")',
                                                                                    'type'=>'raw',
                                                                                    'header'=>'Angka Baru',
                                                                                    'footer'=>true,
                                                                                    'value'=>'CHtml::encode($data->ANGKA_BARU)',
                                                                                    'footerHtmlOptions'=>array(
                                                                                    'style'=>'text-align: right; padding-right: 5px;'
                                                                                    ),
                                                                                ),
                                                                        array('class'=>'ext.TotalColumn',
                                                                                    'name'=>'ANGKA_DIGUNAKAN',
                                                                                    'filter'=>'',
                                                                                    'htmlOptions'=>array('style'=>'text-align:right;width:20px'),
                                                                                    'output'=>'Yii::app()->numberFormatter->formatCurrency($value,"")',
                                                                                    'type'=>'raw',
                                                                                    'header'=>'Angka Digunakan',
                                                                                    'footer'=>true,
                                                                                    'value'=>'CHtml::encode($data->ANGKA_DIGUNAKAN)',
                                                                                    'footerHtmlOptions'=>array(
                                                                                    'style'=>'text-align: right; padding-right: 5px;'
                                                                                    ),
                                                                                ),
                                                                        array('class'=>'ext.TotalColumn',
                                                                                    'name'=>'ANGKA_LEBIHAN',
                                                                                    'filter'=>'',
                                                                                    'htmlOptions'=>array('style'=>'text-align:right;width:20px'),
                                                                                    'output'=>'Yii::app()->numberFormatter->formatCurrency($value,"")',
                                                                                    'type'=>'raw',
                                                                                    'header'=>'Angka Lebihan',
                                                                                    'footer'=>true,
                                                                                    'value'=>'CHtml::encode($data->ANGKA_LEBIHAN)',
                                                                                    'footerHtmlOptions'=>array(
                                                                                    'style'=>'text-align: right; padding-right: 5px;'
                                                                                    ),
                                                                                ),
                                                                        'NO_SK',
                                                                        array(
                                                                                    'class'=>'CButtonColumn',
                                                                                    'template' =>'{view}{delete}{update}',
                                                                                    'buttons' => array(
                                                                                    'view' => array(
                                                                                                'label'=>'view',
                                                                                                'url'=>'Yii::app()->createUrl("/tblAkTetap/view", array("id" => $data->ID_AK_TETAP))',
                                                                                                ),
                                                                                    'delete' => array(
                                                                                                'label'=>'delete',
                                                                                                'url'=>'Yii::app()->createUrl("/tblAkTetap/delete", array("id" => $data->ID_AK_TETAP))',
                                                                                                ),
                                                                                    'update'=> array(
                                                                                                'label'=>'update',
                                                                                                'url'=>'Yii::app()->createUrl("/tblAkTetap/update", array("id"=>$data->ID_AK_TETAP))'
                                                                                                     ),
                                                                                                   ),
                                                                                ),
                                                                ),
                                                        )); ?>
                                                        </div>
                                                        <div class="tab-pane fade" id="tab5">
                                                            <?php echo CHtml::link('<i class="icon-plus"></i> Angka Kredit Tetap IV A',array('/tblAkTetap/create&id_dosen='.$model->ID_DOSEN.'&jenjang=IV A'),array('class'=>'btn btn-default btn-md'));?>
                                                            <?php $this->widget('zii.widgets.grid.CGridView', array(
                                                                'id'=>'tbl-ak-tetap-grid',
                                                                'dataProvider'=>$IVA,
                                                                //'filter'=>$model,
                                                                'columns'=>array(
                                                                        //'ID_AK_TETAP',
                                                                        'iDDOSEN.NAMA_DOSEN',
                                                                        //'iDAKUNSUR.AK_UNSUR',
                                                                        array('name'=>'iDAKAUNSUR.AK_UNSUR',
                                                                                     'type'=>'raw',
                                                                                     'header'=>'Tgl Kegiatan',
                                                                                     'footer'=>'<b> Nilai Total :</b>',
                                                                                     'value'=>'CHtml::encode($data->iDAKUNSUR->AK_UNSUR)',
                                                                                     //'htmlOptions'=>array('width'=>'15%'),
                                                                                     ),
                                                                        array('class'=>'ext.TotalColumn',
                                                                                    'name'=>'ANGKA_LAMA',
                                                                                    'filter'=>'',
                                                                                    'htmlOptions'=>array('style'=>'text-align:right;width:20px'),
                                                                                    'output'=>'Yii::app()->numberFormatter->formatCurrency($value,"")',
                                                                                    'type'=>'raw',
                                                                                    'header'=>'Angka Lama',
                                                                                    'footer'=>true,
                                                                                    'value'=>'CHtml::encode($data->ANGKA_LAMA)',
                                                                                    'footerHtmlOptions'=>array(
                                                                                    'style'=>'text-align: right; padding-right: 5px;'
                                                                                    ),
                                                                                ),
                                                                    
                                                                        array('class'=>'ext.TotalColumn',
                                                                                    'name'=>'ANGKA_BARU',
                                                                                    'filter'=>'',
                                                                                    'htmlOptions'=>array('style'=>'text-align:right;width:20px'),
                                                                                    'output'=>'Yii::app()->numberFormatter->formatCurrency($value,"")',
                                                                                    'type'=>'raw',
                                                                                    'header'=>'Angka Baru',
                                                                                    'footer'=>true,
                                                                                    'value'=>'CHtml::encode($data->ANGKA_BARU)',
                                                                                    'footerHtmlOptions'=>array(
                                                                                    'style'=>'text-align: right; padding-right: 5px;'
                                                                                    ),
                                                                                ),
                                                                        array('class'=>'ext.TotalColumn',
                                                                                    'name'=>'ANGKA_DIGUNAKAN',
                                                                                    'filter'=>'',
                                                                                    'htmlOptions'=>array('style'=>'text-align:right;width:20px'),
                                                                                    'output'=>'Yii::app()->numberFormatter->formatCurrency($value,"")',
                                                                                    'type'=>'raw',
                                                                                    'header'=>'Angka Digunakan',
                                                                                    'footer'=>true,
                                                                                    'value'=>'CHtml::encode($data->ANGKA_DIGUNAKAN)',
                                                                                    'footerHtmlOptions'=>array(
                                                                                    'style'=>'text-align: right; padding-right: 5px;'
                                                                                    ),
                                                                                ),
                                                                        array('class'=>'ext.TotalColumn',
                                                                                    'name'=>'ANGKA_LEBIHAN',
                                                                                    'filter'=>'',
                                                                                    'htmlOptions'=>array('style'=>'text-align:right;width:20px'),
                                                                                    'output'=>'Yii::app()->numberFormatter->formatCurrency($value,"")',
                                                                                    'type'=>'raw',
                                                                                    'header'=>'Angka Lebihan',
                                                                                    'footer'=>true,
                                                                                    'value'=>'CHtml::encode($data->ANGKA_LEBIHAN)',
                                                                                    'footerHtmlOptions'=>array(
                                                                                    'style'=>'text-align: right; padding-right: 5px;'
                                                                                    ),
                                                                                ),
                                                                        'NO_SK',
                                                                        array(
                                                                                    'class'=>'CButtonColumn',
                                                                                    'template' =>'{view}{delete}{update}',
                                                                                    'buttons' => array(
                                                                                    'view' => array(
                                                                                                'label'=>'view',
                                                                                                'url'=>'Yii::app()->createUrl("/tblAkTetap/view", array("id" => $data->ID_AK_TETAP))',
                                                                                                ),
                                                                                    'delete' => array(
                                                                                                'label'=>'delete',
                                                                                                'url'=>'Yii::app()->createUrl("/tblAkTetap/delete", array("id" => $data->ID_AK_TETAP))',
                                                                                                ),
                                                                                    'update'=> array(
                                                                                                'label'=>'update',
                                                                                                'url'=>'Yii::app()->createUrl("/tblAkTetap/update", array("id"=>$data->ID_AK_TETAP))'
                                                                                                     ),
                                                                                                   ),
                                                                                ),
                                                                ),
                                                        )); ?>
                                                        </div>
                                                        <div class="tab-pane fade" id="tab6">
                                                            <?php echo CHtml::link('<i class="icon-plus"></i> Angka Kredit Tetap IV B',array('/tblAkTetap/create&id_dosen='.$model->ID_DOSEN.'&jenjang=IV B'),array('class'=>'btn btn-success btn-md'));?>
                                                            <?php $this->widget('zii.widgets.grid.CGridView', array(
                                                                'id'=>'tbl-ak-tetap-grid',
                                                                'dataProvider'=>$IVB,
                                                                //'filter'=>$model,
                                                                'columns'=>array(
                                                                        //'ID_AK_TETAP',
                                                                        'iDDOSEN.NAMA_DOSEN',
                                                                        array('name'=>'iDAKAUNSUR.AK_UNSUR',
                                                                                     'type'=>'raw',
                                                                                     'header'=>'Tgl Kegiatan',
                                                                                     'footer'=>'<b> Nilai Total :</b>',
                                                                                     'value'=>'CHtml::encode($data->iDAKUNSUR->AK_UNSUR)',
                                                                                     //'htmlOptions'=>array('width'=>'15%'),
                                                                                     ),
                                                                        array('class'=>'ext.TotalColumn',
                                                                                    'name'=>'ANGKA_LAMA',
                                                                                    'filter'=>'',
                                                                                    'htmlOptions'=>array('style'=>'text-align:right;width:20px'),
                                                                                    'output'=>'Yii::app()->numberFormatter->formatCurrency($value,"")',
                                                                                    'type'=>'raw',
                                                                                    'header'=>'Angka Lama',
                                                                                    'footer'=>true,
                                                                                    'value'=>'CHtml::encode($data->ANGKA_LAMA)',
                                                                                    'footerHtmlOptions'=>array(
                                                                                    'style'=>'text-align: right; padding-right: 5px;'
                                                                                    ),
                                                                                ),
                                                                    
                                                                        array('class'=>'ext.TotalColumn',
                                                                                    'name'=>'ANGKA_BARU',
                                                                                    'filter'=>'',
                                                                                    'htmlOptions'=>array('style'=>'text-align:right;width:20px'),
                                                                                    'output'=>'Yii::app()->numberFormatter->formatCurrency($value,"")',
                                                                                    'type'=>'raw',
                                                                                    'header'=>'Angka Baru',
                                                                                    'footer'=>true,
                                                                                    'value'=>'CHtml::encode($data->ANGKA_BARU)',
                                                                                    'footerHtmlOptions'=>array(
                                                                                    'style'=>'text-align: right; padding-right: 5px;'
                                                                                    ),
                                                                                ),
                                                                        array('class'=>'ext.TotalColumn',
                                                                                    'name'=>'ANGKA_DIGUNAKAN',
                                                                                    'filter'=>'',
                                                                                    'htmlOptions'=>array('style'=>'text-align:right;width:20px'),
                                                                                    'output'=>'Yii::app()->numberFormatter->formatCurrency($value,"")',
                                                                                    'type'=>'raw',
                                                                                    'header'=>'Angka Digunakan',
                                                                                    'footer'=>true,
                                                                                    'value'=>'CHtml::encode($data->ANGKA_DIGUNAKAN)',
                                                                                    'footerHtmlOptions'=>array(
                                                                                    'style'=>'text-align: right; padding-right: 5px;'
                                                                                    ),
                                                                                ),
                                                                        array('class'=>'ext.TotalColumn',
                                                                                    'name'=>'ANGKA_LEBIHAN',
                                                                                    'filter'=>'',
                                                                                    'htmlOptions'=>array('style'=>'text-align:right;width:20px'),
                                                                                    'output'=>'Yii::app()->numberFormatter->formatCurrency($value,"")',
                                                                                    'type'=>'raw',
                                                                                    'header'=>'Angka Lebihan',
                                                                                    'footer'=>true,
                                                                                    'value'=>'CHtml::encode($data->ANGKA_LEBIHAN)',
                                                                                    'footerHtmlOptions'=>array(
                                                                                    'style'=>'text-align: right; padding-right: 5px;'
                                                                                    ),
                                                                                ),
                                                                        'NO_SK',
                                                                        array(
                                                                                    'class'=>'CButtonColumn',
                                                                                    'template' =>'{view}{delete}{update}',
                                                                                    'buttons' => array(
                                                                                    'view' => array(
                                                                                                'label'=>'view',
                                                                                                'url'=>'Yii::app()->createUrl("/tblAkTetap/view", array("id" => $data->ID_AK_TETAP))',
                                                                                                ),
                                                                                    'delete' => array(
                                                                                                'label'=>'delete',
                                                                                                'url'=>'Yii::app()->createUrl("/tblAkTetap/delete", array("id" => $data->ID_AK_TETAP))',
                                                                                                ),
                                                                                    'update'=> array(
                                                                                                'label'=>'update',
                                                                                                'url'=>'Yii::app()->createUrl("/tblAkTetap/update", array("id"=>$data->ID_AK_TETAP))'
                                                                                                     ),
                                                                                                   ),
                                                                                ),
                                                                ),
                                                        )); ?>
                                                        </div>
                                                        <div class="tab-pane fade" id="tab7">
                                                            <?php echo CHtml::link('<i class="icon-plus"></i> Angka Kredit Tetap IV C',array('/tblAkTetap/create&id_dosen='.$model->ID_DOSEN.'&jenjang=IV C'),array('class'=>'btn btn-danger btn-md'));?>
                                                            <?php $this->widget('zii.widgets.grid.CGridView', array(
                                                                'id'=>'tbl-ak-tetap-grid',
                                                                'dataProvider'=>$IVC,
                                                                //'filter'=>$model,
                                                                'columns'=>array(
                                                                        //'ID_AK_TETAP',
                                                                        'iDDOSEN.NAMA_DOSEN',
                                                                        array('name'=>'iDAKAUNSUR.AK_UNSUR',
                                                                                     'type'=>'raw',
                                                                                     'header'=>'Tgl Kegiatan',
                                                                                     'footer'=>'<b> Nilai Total :</b>',
                                                                                     'value'=>'CHtml::encode($data->iDAKUNSUR->AK_UNSUR)',
                                                                                     //'htmlOptions'=>array('width'=>'15%'),
                                                                                     ),
                                                                        array('class'=>'ext.TotalColumn',
                                                                                    'name'=>'ANGKA_LAMA',
                                                                                    'filter'=>'',
                                                                                    'htmlOptions'=>array('style'=>'text-align:right;width:20px'),
                                                                                    'output'=>'Yii::app()->numberFormatter->formatCurrency($value,"")',
                                                                                    'type'=>'raw',
                                                                                    'header'=>'Angka Lama',
                                                                                    'footer'=>true,
                                                                                    'value'=>'CHtml::encode($data->ANGKA_LAMA)',
                                                                                    'footerHtmlOptions'=>array(
                                                                                    'style'=>'text-align: right; padding-right: 5px;'
                                                                                    ),
                                                                                ),
                                                                    
                                                                        array('class'=>'ext.TotalColumn',
                                                                                    'name'=>'ANGKA_BARU',
                                                                                    'filter'=>'',
                                                                                    'htmlOptions'=>array('style'=>'text-align:right;width:20px'),
                                                                                    'output'=>'Yii::app()->numberFormatter->formatCurrency($value,"")',
                                                                                    'type'=>'raw',
                                                                                    'header'=>'Angka Baru',
                                                                                    'footer'=>true,
                                                                                    'value'=>'CHtml::encode($data->ANGKA_BARU)',
                                                                                    'footerHtmlOptions'=>array(
                                                                                    'style'=>'text-align: right; padding-right: 5px;'
                                                                                    ),
                                                                                ),
                                                                        array('class'=>'ext.TotalColumn',
                                                                                    'name'=>'ANGKA_DIGUNAKAN',
                                                                                    'filter'=>'',
                                                                                    'htmlOptions'=>array('style'=>'text-align:right;width:20px'),
                                                                                    'output'=>'Yii::app()->numberFormatter->formatCurrency($value,"")',
                                                                                    'type'=>'raw',
                                                                                    'header'=>'Angka Digunakan',
                                                                                    'footer'=>true,
                                                                                    'value'=>'CHtml::encode($data->ANGKA_DIGUNAKAN)',
                                                                                    'footerHtmlOptions'=>array(
                                                                                    'style'=>'text-align: right; padding-right: 5px;'
                                                                                    ),
                                                                                ),
                                                                        array('class'=>'ext.TotalColumn',
                                                                                    'name'=>'ANGKA_LEBIHAN',
                                                                                    'filter'=>'',
                                                                                    'htmlOptions'=>array('style'=>'text-align:right;width:20px'),
                                                                                    'output'=>'Yii::app()->numberFormatter->formatCurrency($value,"")',
                                                                                    'type'=>'raw',
                                                                                    'header'=>'Angka Lebihan',
                                                                                    'footer'=>true,
                                                                                    'value'=>'CHtml::encode($data->ANGKA_LEBIHAN)',
                                                                                    'footerHtmlOptions'=>array(
                                                                                    'style'=>'text-align: right; padding-right: 5px;'
                                                                                    ),
                                                                                ),
                                                                        'NO_SK',
                                                                        array(
                                                                                    'class'=>'CButtonColumn',
                                                                                    'template' =>'{view}{delete}{update}',
                                                                                    'buttons' => array(
                                                                                    'view' => array(
                                                                                                'label'=>'view',
                                                                                                'url'=>'Yii::app()->createUrl("/tblAkTetap/view", array("id" => $data->ID_AK_TETAP))',
                                                                                                ),
                                                                                    'delete' => array(
                                                                                                'label'=>'delete',
                                                                                                'url'=>'Yii::app()->createUrl("/tblAkTetap/delete", array("id" => $data->ID_AK_TETAP))',
                                                                                                ),
                                                                                    'update'=> array(
                                                                                                'label'=>'update',
                                                                                                'url'=>'Yii::app()->createUrl("/tblAkTetap/update", array("id"=>$data->ID_AK_TETAP))'
                                                                                                     ),
                                                                                                   ),
                                                                                ),
                                                                ),
                                                        )); ?>
                                                        </div>
                                                        <div class="tab-pane fade" id="tab8">
                                                            <?php echo CHtml::link('<i class="icon-plus"></i> Angka Kredit Tetap IV D',array('/tblAkTetap/create&id_dosen='.$model->ID_DOSEN.'&jenjang=IV D'),array('class'=>'btn btn-warning btn-md'));?>
                                                            <?php $this->widget('zii.widgets.grid.CGridView', array(
                                                                'id'=>'tbl-ak-tetap-grid',
                                                                'dataProvider'=>$IVD,
                                                                //'filter'=>$model,
                                                                'columns'=>array(
                                                                        //'ID_AK_TETAP',
                                                                        'iDDOSEN.NAMA_DOSEN',
                                                                        array('name'=>'iDAKAUNSUR.AK_UNSUR',
                                                                                     'type'=>'raw',
                                                                                     'header'=>'Tgl Kegiatan',
                                                                                     'footer'=>'<b> Nilai Total :</b>',
                                                                                     'value'=>'CHtml::encode($data->iDAKUNSUR->AK_UNSUR)',
                                                                                     //'htmlOptions'=>array('width'=>'15%'),
                                                                                     ),
                                                                        array('class'=>'ext.TotalColumn',
                                                                                    'name'=>'ANGKA_LAMA',
                                                                                    'filter'=>'',
                                                                                    'htmlOptions'=>array('style'=>'text-align:right;width:20px'),
                                                                                    'output'=>'Yii::app()->numberFormatter->formatCurrency($value,"")',
                                                                                    'type'=>'raw',
                                                                                    'header'=>'Angka Lama',
                                                                                    'footer'=>true,
                                                                                    'value'=>'CHtml::encode($data->ANGKA_LAMA)',
                                                                                    'footerHtmlOptions'=>array(
                                                                                    'style'=>'text-align: right; padding-right: 5px;'
                                                                                    ),
                                                                                ),
                                                                    
                                                                        array('class'=>'ext.TotalColumn',
                                                                                    'name'=>'ANGKA_BARU',
                                                                                    'filter'=>'',
                                                                                    'htmlOptions'=>array('style'=>'text-align:right;width:20px'),
                                                                                    'output'=>'Yii::app()->numberFormatter->formatCurrency($value,"")',
                                                                                    'type'=>'raw',
                                                                                    'header'=>'Angka Baru',
                                                                                    'footer'=>true,
                                                                                    'value'=>'CHtml::encode($data->ANGKA_BARU)',
                                                                                    'footerHtmlOptions'=>array(
                                                                                    'style'=>'text-align: right; padding-right: 5px;'
                                                                                    ),
                                                                                ),
                                                                        array('class'=>'ext.TotalColumn',
                                                                                    'name'=>'ANGKA_DIGUNAKAN',
                                                                                    'filter'=>'',
                                                                                    'htmlOptions'=>array('style'=>'text-align:right;width:20px'),
                                                                                    'output'=>'Yii::app()->numberFormatter->formatCurrency($value,"")',
                                                                                    'type'=>'raw',
                                                                                    'header'=>'Angka Digunakan',
                                                                                    'footer'=>true,
                                                                                    'value'=>'CHtml::encode($data->ANGKA_DIGUNAKAN)',
                                                                                    'footerHtmlOptions'=>array(
                                                                                    'style'=>'text-align: right; padding-right: 5px;'
                                                                                    ),
                                                                                ),
                                                                        array('class'=>'ext.TotalColumn',
                                                                                    'name'=>'ANGKA_LEBIHAN',
                                                                                    'filter'=>'',
                                                                                    'htmlOptions'=>array('style'=>'text-align:right;width:20px'),
                                                                                    'output'=>'Yii::app()->numberFormatter->formatCurrency($value,"")',
                                                                                    'type'=>'raw',
                                                                                    'header'=>'Angka Lebihan',
                                                                                    'footer'=>true,
                                                                                    'value'=>'CHtml::encode($data->ANGKA_LEBIHAN)',
                                                                                    'footerHtmlOptions'=>array(
                                                                                    'style'=>'text-align: right; padding-right: 5px;'
                                                                                    ),
                                                                                ),
                                                                        'NO_SK',
                                                                        array(
                                                                                    'class'=>'CButtonColumn',
                                                                                    'template' =>'{view}{delete}{update}',
                                                                                    'buttons' => array(
                                                                                    'view' => array(
                                                                                                'label'=>'view',
                                                                                                'url'=>'Yii::app()->createUrl("/tblAkTetap/view", array("id" => $data->ID_AK_TETAP))',
                                                                                                ),
                                                                                    'delete' => array(
                                                                                                'label'=>'delete',
                                                                                                'url'=>'Yii::app()->createUrl("/tblAkTetap/delete", array("id" => $data->ID_AK_TETAP))',
                                                                                                ),
                                                                                    'update'=> array(
                                                                                                'label'=>'update',
                                                                                                'url'=>'Yii::app()->createUrl("/tblAkTetap/update", array("id"=>$data->ID_AK_TETAP))'
                                                                                                     ),
                                                                                                   ),
                                                                                ),
                                                                ),
                                                        )); ?>
                                                        </div>
                                                        <div class="tab-pane fade" id="tab9">
                                                            <?php echo CHtml::link('<i class="icon-plus"></i> Angka Kredit Tetap IV E',array('/tblAkTetap/create&id_dosen='.$model->ID_DOSEN.'&jenjang=IV E'),array('class'=>'btn btn-default btn-md'));?>
                                                            <?php $this->widget('zii.widgets.grid.CGridView', array(
                                                                'id'=>'tbl-ak-tetap-grid',
                                                                'dataProvider'=>$IVE,
                                                                //'filter'=>$model,
                                                                'columns'=>array(
                                                                        //'ID_AK_TETAP',
                                                                        'iDDOSEN.NAMA_DOSEN',
                                                                        array('name'=>'iDAKAUNSUR.AK_UNSUR',
                                                                                     'type'=>'raw',
                                                                                     'header'=>'Tgl Kegiatan',
                                                                                     'footer'=>'<b> Nilai Total :</b>',
                                                                                     'value'=>'CHtml::encode($data->iDAKUNSUR->AK_UNSUR)',
                                                                                     //'htmlOptions'=>array('width'=>'15%'),
                                                                                     ),
                                                                        array('class'=>'ext.TotalColumn',
                                                                                    'name'=>'ANGKA_LAMA',
                                                                                    'filter'=>'',
                                                                                    'htmlOptions'=>array('style'=>'text-align:right;width:20px'),
                                                                                    'output'=>'Yii::app()->numberFormatter->formatCurrency($value,"")',
                                                                                    'type'=>'raw',
                                                                                    'header'=>'Angka Lama',
                                                                                    'footer'=>true,
                                                                                    'value'=>'CHtml::encode($data->ANGKA_LAMA)',
                                                                                    'footerHtmlOptions'=>array(
                                                                                    'style'=>'text-align: right; padding-right: 5px;'
                                                                                    ),
                                                                                ),
                                                                    
                                                                        array('class'=>'ext.TotalColumn',
                                                                                    'name'=>'ANGKA_BARU',
                                                                                    'filter'=>'',
                                                                                    'htmlOptions'=>array('style'=>'text-align:right;width:20px'),
                                                                                    'output'=>'Yii::app()->numberFormatter->formatCurrency($value,"")',
                                                                                    'type'=>'raw',
                                                                                    'header'=>'Angka Baru',
                                                                                    'footer'=>true,
                                                                                    'value'=>'CHtml::encode($data->ANGKA_BARU)',
                                                                                    'footerHtmlOptions'=>array(
                                                                                    'style'=>'text-align: right; padding-right: 5px;'
                                                                                    ),
                                                                                ),
                                                                        array('class'=>'ext.TotalColumn',
                                                                                    'name'=>'ANGKA_DIGUNAKAN',
                                                                                    'filter'=>'',
                                                                                    'htmlOptions'=>array('style'=>'text-align:right;width:20px'),
                                                                                    'output'=>'Yii::app()->numberFormatter->formatCurrency($value,"")',
                                                                                    'type'=>'raw',
                                                                                    'header'=>'Angka Digunakan',
                                                                                    'footer'=>true,
                                                                                    'value'=>'CHtml::encode($data->ANGKA_DIGUNAKAN)',
                                                                                    'footerHtmlOptions'=>array(
                                                                                    'style'=>'text-align: right; padding-right: 5px;'
                                                                                    ),
                                                                                ),
                                                                        array('class'=>'ext.TotalColumn',
                                                                                    'name'=>'ANGKA_LEBIHAN',
                                                                                    'filter'=>'',
                                                                                    'htmlOptions'=>array('style'=>'text-align:right;width:20px'),
                                                                                    'output'=>'Yii::app()->numberFormatter->formatCurrency($value,"")',
                                                                                    'type'=>'raw',
                                                                                    'header'=>'Angka Lebihan',
                                                                                    'footer'=>true,
                                                                                    'value'=>'CHtml::encode($data->ANGKA_LEBIHAN)',
                                                                                    'footerHtmlOptions'=>array(
                                                                                    'style'=>'text-align: right; padding-right: 5px;'
                                                                                    ),
                                                                                ),
                                                                        'NO_SK',
                                                                        array(
                                                                                    'class'=>'CButtonColumn',
                                                                                    'template' =>'{view}{delete}{update}',
                                                                                    'buttons' => array(
                                                                                    'view' => array(
                                                                                                'label'=>'view',
                                                                                                'url'=>'Yii::app()->createUrl("/tblAkTetap/view", array("id" => $data->ID_AK_TETAP))',
                                                                                                ),
                                                                                    'delete' => array(
                                                                                                'label'=>'delete',
                                                                                                'url'=>'Yii::app()->createUrl("/tblAkTetap/delete", array("id" => $data->ID_AK_TETAP))',
                                                                                                ),
                                                                                    'update'=> array(
                                                                                                'label'=>'update',
                                                                                                'url'=>'Yii::app()->createUrl("/tblAkTetap/update", array("id"=>$data->ID_AK_TETAP))'
                                                                                                     ),
                                                                                                   ),
                                                                                ),
                                                                ),
                                                        )); ?>
                                                        </div>
        
        </div>
	</div>
        </div>
    <!--/.panel-->
  
    </div>
</div>
 
<div class="portlet box yellow">
<div class="portlet-title">
    <div class="caption">
	<i class="fa fa-pencil-square-o"></i> View Dosen #<?php echo $model->NAMA_DOSEN; ?>  </div>
    </div>
<div class="portlet-body">        
	<div class="block-content collapse in">
        <ul class="nav nav-tabs">
	<li class="active"><a href="#tab1" data-toggle="tab">View</a></li>
	<li><a href="#tab2" data-toggle="tab">Dokumen Dosen</a></li>
	
        </ul>
        
            <div class="span8">
            <div class="tab-content">
                <div class="tab-pane fade in active" id="tab1">
							<?php $this->widget('zii.widgets.CDetailView', array(
                                                                                'data'=>$model,
                                                                                'htmlOptions' => array('class'=> 'table table-bordered table-striped table-advance table-hover'),
                                                                                'attributes'=>array(
                                                                                        'ID_DOSEN',
                                                                                        'NIP_DOSEN',
                                                                                        'NAMA_DOSEN',
                                                                                        'PENDIDIKAN_TERTINGGI',
                                                                                        'NIDN',
                                                                                        'GELAR_AKHIR',
                                                                                        'GELAR_AWAL',
                                                                                        'iDJURUSAN.NAMA_JURUSAN',
                                                                                        'iDGOLONGAN.GOLONGAN',
                                                                                        'iDJABATAN.NAMA_JABATAN',
                                                                                        'iDSTATUSKEP.STATUS_KEP',
                                                                                        'TMP_LAHIR',
                                                                                        //'TGL_LAHIR',
																						array(               // related city displayed as a link
                                                                                            'label'=>'Tanggal Lahir',
                                                                                            'type'=>'raw',
                                                                                            'value'=>IDDate::getDate($model->TGL_LAHIR)                                
                                                                                                 ),
                                                                                         array(               // related city displayed as a link
                                                                                            'label'=>'Jenis Kelamin',
                                                                                            'type'=>'raw',
                                                                                            'value'=>CHtml::encode($model->ubahJk())                                 
                                                                                                 ),
                                                                                        array(
                                                                                            'label'=>'Agama',
                                                                                            'type'=>'raw',
                                                                                            'value'=>CHtml::encode($model->ubahAgama())
                                                                                        ),
                                                                                        'ALAMAT',
                                                                                        'NO_KARPEG',
                                                                                        'TGL_MASUK',
                                                                                        'FOTO',
                                                                                        'PASSWORD',
                                                                                ),
                                                                        )); ?>
                                                        
							</div>
							<div class="tab-pane fade" id="tab2">
							<?php $this->widget('zii.widgets.grid.CGridView', array(
                                                                'id'=>'tbl-dokumen-dosen-grid',
                                                                'dataProvider'=>$viewdokumen,
                                                                //'filter'=>$model,
                                                                'columns'=>array(
                                                                        'ID_DOKUMEN',
                                                                        'NIP_DOSEN',
                                                                        'DOKUMEN',
                                                                        'NAMA_DOKUMEN',
                                                                        'KETERANGAN',
                                                                        'TGL_SUBMIT',
                                                                        array(
                                                                            'class'=>'CButtonColumn',
                                                                            'template'=>'{reg}',
                                                                            'header'=>'Download',
                                                                            'buttons'=>array(
                                                                            'reg' => array(
                                                                            'label'=>'Dokumen',
                                                                            'target'=>'_blank',
                                                                            'url'=>'("dokumen/$data->NIP_DOSEN/$data->DOKUMEN")',
                                                                            //'imageUrl'=>Yii::app()->request->baseUrl.'/assets/61f1fe9/gridview/delete.png',
                                                                            ),
                                                                            ),
                                                                            'htmlOptions'=>array('width'=>30),
                                                                            ),
                                                                            array(
                                                                                    'class'=>'CButtonColumn',
                                                                                    'template' =>'{view}{delete}{update}',
                                                                                    'buttons' => array(
                                                                                                'view' => array(
                                                                                                            'label'=>'view',
                                                                                                            'url'=>'Yii::app()->createUrl("/tblDokumenDosen/view", array("id" => $data->ID_DOKUMEN))',
                                                                                                            ),
                                                                                                'delete' => array(
                                                                                                            'label'=>'delete',
                                                                                                            'url'=>'Yii::app()->createUrl("/tblDokumenDosen/delete", array("id" => $data->ID_DOKUMEN))',
                                                                                                            ),
                                                                                                'update'=> array(
                                                                                                            'label'=>'update',
                                                                                                            'url'=>'Yii::app()->createUrl("/tblDokumenDosen/update", array("id"=>$data->ID_DOKUMEN))'
                                                                                                            ),
                                                                                                   ),
                                                                                ),
                                                                ),
                                                        )); ?>
                                                            
</div>
</div>
</div>
            <br>
                                                            <?php echo CHtml::link('<i class="icon-plus"></i> Dokumen Dosen',array('/tblDokumenDosen/create&id_dosen='.$model->NIP_DOSEN),array('class'=>'btn btn-success btn-md'));?>
</div>
</div> 
</div>
<div class="portlet box yellow">
<div class="portlet-title">
  <div class="caption">
	<i class="fa fa-pencil-square-o"></i> View Data Dosen #<?php echo $model->NAMA_DOSEN; ?>  </div>
</div>

<div class="portlet-body">
<div class="btn-box-row row-fluid" align="center">
							<?php $this->widget('zii.widgets.CDetailView', array(
                                                                                'data'=>$model,
                                                                                'htmlOptions' => array('class'=> 'table table-bordered table-striped table-advance table-hover'),
                                                                                'attributes'=>array(
                                                                                        'ID_DOSEN',
                                                                                        'NIP_DOSEN',
                                                                                        'NAMA_DOSEN',
                                                                                        'NIDN',
                                                                                        'GELAR_AKHIR',
                                                                                        'GELAR_AWAL',
                                                                                        'iDJURUSAN.NAMA_JURUSAN',
                                                                                        'iDGOLONGAN.GOLONGAN',
                                                                                        'iDJABATAN.NAMA_JABATAN',
                                                                                        'iDSTATUSKEP.STATUS_KEP',
                                                                                        'TMP_LAHIR',
                                                                                        'TGL_LAHIR',
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
														                                                                                                              
        </div>
            </div>
<div class="portlet box green">
    <div class="portlet-title">
        <div class="caption">
        <i class="fa fa-pencil-square-o"></i> View Pengajuan Angka Kredit <b><?php echo $model->NAMA_DOSEN; ?></b>  </div>
    </div>

<div class="portlet-body">
    <div class="btn-box-row row-fluid" align="center">
                                    <div class="tile bg-red">
                                        <div class="tile-body">
                                            <i class="fa fa-database"></i>
                                            <?php echo CHtml::link('Pengajuan AK III B',array('tblDosen/viewdosen&id='.$model->ID_DOSEN.'&pengajuan=III B'));?>
                                        </div>
                                        <div class="tile-object">
                                            </div>
                                    </div>
                                    
                                    <div class="tile bg-blue">
                                        <div class="tile-body">
                                            <i class="fa fa-database"></i>
                                            <?php echo CHtml::link('Pengajuan AK III C',array('tblDosen/viewdosen&id='.$model->ID_DOSEN.'&pengajuan=III C'));?>
                                        </div>
                                        <div class="tile-object">
                                            </div>
                                    </div>
                                    
                                    <div class="tile bg-green">
                                        <div class="tile-body">
                                            <i class="fa fa-database"></i>
                                            <?php echo CHtml::link('Pengajuan AK III D',array('tblDosen/viewdosen&id='.$model->ID_DOSEN.'&pengajuan=III D'));?>
                                        </div>
                                        <div class="tile-object">
                                            </div>
                                    </div>
                                    
                                    <div class="tile bg-purple">
                                        <div class="tile-body">
                                            <i class="fa fa-database"></i>
                                            <?php echo CHtml::link('Pengajuan AK IV A',array('tblDosen/viewdosen&id='.$model->ID_DOSEN.'&pengajuan=IV A'));?>
                                        </div>
                                        <div class="tile-object">
                                            </div>
                                    </div>
                                    
                                    <div class="tile bg-purple">
                                        <div class="tile-body">
                                            <i class="fa fa-database"></i>
                                            <?php echo CHtml::link('Pengajuan AK IV B',array('tblDosen/viewdosen&id='.$model->ID_DOSEN.'&pengajuan=IV B'));?>
                                        </div>
                                        <div class="tile-object">
                                            </div>
                                    </div>
                                    
                                    <div class="tile bg-green">
                                        <div class="tile-body">
                                            <i class="fa fa-database"></i>
                                            <?php echo CHtml::link('Pengajuan AK IV C',array('tblDosen/viewdosen&id='.$model->ID_DOSEN.'&pengajuan=IV C'));?>
                                        </div>
                                        <div class="tile-object">
                                            </div>
                                    </div>
                                    
                                    <div class="tile bg-blue">
                                        <div class="tile-body">
                                            <i class="fa fa-database"></i>
                                            <?php echo CHtml::link('Pengajuan AK IV D',array('tblDosen/viewdosen&id='.$model->ID_DOSEN.'&pengajuan=IV D'));?>
                                        </div>
                                        <div class="tile-object">
                                            </div>
                                    </div>
                                    
                                    <div class="tile bg-red">
                                        <div class="tile-body">
                                            <i class="fa fa-database"></i>
                                            <?php echo CHtml::link('Pengajuan AK IV E',array('tblDosen/viewdosen&id='.$model->ID_DOSEN.'&pengajuan=IV E'));?>
                                        </div>
                                        <div class="tile-object">
                                            </div>
                                    </div>
                                </div>
                            </div>
                        </div>											                                                                                                             
 
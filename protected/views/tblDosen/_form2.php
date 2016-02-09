<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'tbl-dosen-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
        'htmlOptions'=>array('class'=>'form-horizontal'),
)); ?>
        <div class="form-body">
	<?php echo $form->errorSummary($model); ?>

	<!--<div class="form-group">
		<?php echo $form->labelEx($model,'ID_DOSEN',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->textField($model,'ID_DOSEN',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'ID_DOSEN'); ?>
            </div>
	</div>-->

	<div class="form-group">
		<?php echo $form->labelEx($model,'NIP_DOSEN',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->textField($model,'NIP_DOSEN',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'NIP_DOSEN'); ?>
            </div>
	</div>
        
        <div class="form-group">
		<?php echo $form->labelEx($model,'NIDN',array('class'=>'col-md-3 col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->textField($model,'NIDN',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'NIDN'); ?>
            </div>
	</div>
        
        <div class="form-group">
		<?php echo $form->labelEx($model,'NO_KARPEG',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->textField($model,'NO_KARPEG',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'NO_KARPEG'); ?>
            </div>
	</div>
        
        <div class="form-group">
		<?php echo $form->labelEx($model,'ID_STATUS_KEP',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->dropDownList($model,'ID_STATUS_KEP', CHtml::listData(TblStatusKepegawaian::model()->findAll(), 'ID_STATUS_KEP', 'STATUS_KEP'),array('class'=>'form-control','empty'=>'- Pilih Status Kepegawaian -')); ?>
		<?php echo $form->error($model,'ID_STATUS_KEP'); ?>
            </div>
	</div>
        
        <div class="form-group">
                <?php echo $form->labelEx($model, 'ID_JURUSAN', array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
                <?php echo $form->dropDownList($model,'ID_JURUSAN', CHtml::listData(TblJurusan::model()->findAll(),'ID_JURUSAN', 'NAMA_JURUSAN'),array('class'=>'form-control','empty'=>'- Pilih Jurusan -')); ?>
                <?php echo $form->error($model,'ID_JURUSAN'); ?>
            </div>
        </div>
        
        <div class="form-group">
		<?php echo $form->labelEx($model,'NAMA_DOSEN',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->textField($model,'NAMA_DOSEN',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'NAMA_DOSEN'); ?>
            </div>
	</div>
        
        <div class="form-group">
                <?php echo $form->labelEx($model,'PENDIDIKAN_TERTINGGI',array('class'=>'col-md-3 control-label'));?>
            <div class="col-md-4">
                <?php echo $form->textField($model,'PENDIDIKAN_TERTINGGI',array('class'=>'form-control')); ?>
                <?php echo $form->error($model,'PENDIDIKAN_TERTINGGI'); ?>
            </div>
        </div>
        
        <div class="form-group">
		<?php echo $form->labelEx($model,'TMP_LAHIR',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->textField($model,'TMP_LAHIR',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'TMP_LAHIR'); ?>
            </div>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'TGL_LAHIR',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php $this->widget('zii.widgets.jui.CJuiDatePicker', 
                        array(
                            'model'=>$model,
                            'attribute'=>'TGL_LAHIR',
                            'value'=>$model->TGL_LAHIR,
                           // 'class'=>'form-control',
                            'options'=>array(
                                'dateFormat'=>'yy-mm-dd',
                             //   'showOn'=>'button',
                                'yearRange'=>'-70',
                                'changeMonth'=>'true',
                                'changeYear'=>'true',
                                'constrainInput'=>'false',
                                'duration'=>'fast',
                                'showAnim'=>'slide',
                            ),
                            'htmlOptions'=>array('class'=>'form-control',))); ?>
		<?php echo $form->error($model,'TGL_LAHIR'); ?>
            </div>
	</div>
        
        <div class="form-group">
		<?php echo $form->labelEx($model,'GELAR_AWAL',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->textField($model,'GELAR_AWAL',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'GELAR_AWAL'); ?>
            </div>
	</div>
        
        <div class="form-group">
		<?php echo $form->labelEx($model,'GELAR_AKHIR',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->textField($model,'GELAR_AKHIR',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'GELAR_AKHIR'); ?>
            </div>
	</div>
        
        <div class="form-group">
		<?php echo $form->labelEx($model,'ID_GOLONGAN',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->dropDownList($model,'ID_GOLONGAN', CHtml::listData(TblGolongan::model()->findAll(), 'ID_GOLONGAN', 'GOLONGAN'),array('class'=>'form-control','empty'=>'- Pilih Golongan -')); ?>
		<?php echo $form->error($model,'ID_GOLONGAN'); ?>
            </div>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'ID_JABATAN',array('class'=>'col-md-3 col-md-3 control-label')); ?>
           <div class="col-md-4">
		<?php echo $form->dropDownList($model,'ID_JABATAN', CHtml::listData(TblJabatan::model()->findAll(), 'ID_JABATAN', 'NAMA_JABATAN'),array('class'=>'form-control','empty'=>'- Pilih Jabatan -')); ?>
		<?php echo $form->error($model,'ID_JABATAN'); ?>
            </div>
	</div>
        
	<div class="form-group">
		<?php echo $form->labelEx($model,'J_KEL',array('class'=>'col-md-3 col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->dropDownList($model,'J_KEL',$model->getJenkel(), array('class'=>'form-control','empty'=>'- Jenis Kelamin -')) ?>
		<?php echo $form->error($model,'J_KEL'); ?>
            </div>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'AGAMA',array('class'=>'col-md-3 col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->dropDownList($model,'AGAMA',$model->getAgama(), array('class'=>'form-control','empty'=>'- Pilih Agama -')) ?>
		<?php echo $form->error($model,'AGAMA'); ?>
            </div>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'ALAMAT',array('class'=>'col-md-3 col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->textArea($model,'ALAMAT',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'ALAMAT'); ?>
            </div>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'TGL_MASUK',array('class'=>'col-md-3 col-md-3 control-label')); ?>
            <div class="col-md-4">
                <?php $this->widget('zii.widgets.jui.CJuiDatePicker', 
                        array(
                            'model'=>$model,
                            'attribute'=>'TGL_MASUK',
                            'value'=>$model->TGL_MASUK,
                           // 'class'=>'form-control',
                            'options'=>array(
                                'dateFormat'=>'yy-mm-dd',
                             //   'showOn'=>'button',
                                'yearRange'=>'-70',
                                'changeMonth'=>'true',
                                'changeYear'=>'true',
                                'constrainInput'=>'false',
                                'duration'=>'fast',
                                'showAnim'=>'slide',
                            ),
                            'htmlOptions'=>array('class'=>'form-control',))); ?>
		<?php echo $form->error($model,'TGL_MASUK'); ?>
            </div>
		
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'FOTO',array('class'=>'col-md-3 col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->textField($model,'FOTO',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'FOTO'); ?>
            </div>
	</div>
        
        <div class="form-group">
                <?php echo $form->labelEx($model2,'PASSWORD',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
                <?php echo $form->passwordField($model2,'PASSWORD',array('class'=>'form-control')); ?>
                <?php echo $form->error($model2,'PASSWORD'); ?>
            </div>
        </div>

	<div class="form-actions fluid">
            <div class="col-md-offset-3 col-md-9">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Simpan' : 'Save', array('class'=>'btn btn-primary')); ?>
                <?php echo CHtml::link('Kembali',array('admin'),array('class'=>'btn btn-success btn-md'));?>
            </div>
	</div>
        <?php $this->endWidget(); ?>
        </div>
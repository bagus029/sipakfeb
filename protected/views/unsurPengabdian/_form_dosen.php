<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'unsur-pengabdian-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
        'htmlOptions'=>array('class'=>'form-horizontal form-bordered'),
)); ?>
<div class="form-body">
	<?php echo $form->errorSummary($model); ?>

	<div class="form-group">
		<?php echo $form->labelEx($model,'ID_DOSEN',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->dropDownList($model,'ID_DOSEN', CHtml::listData(TblDosen::model()->findAll(), 'ID_DOSEN', 'NAMA_DOSEN'),array('class'=>'form-control','readonly'=>true)); ?>
		<?php echo $form->error($model,'ID_DOSEN'); ?>
            </div>
	</div>
            
        <div class="form-group">
                <?php echo $form->labelEx($model, 'PENGAJUAN_KE', array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
                <?php echo $form->dropDownList($model, 'PENGAJUAN_KE', $model->getPengajuan(), array('class'=>'form-control','readonly'=>true)); ?>
                <?php echo $form->error($model, 'PENGAJUAN_Ke'); ?>
            </div>
        </div>
        
        <div class="form-group">
		<?php echo $form->labelEx($model,'ID_SUBUNPENGAB',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php //echo $form->textField($model,'ID_SUBUNPENGAB',array('class'=>'span6 m-wrap')); ?>
                <?php echo $form->dropDownList($model,'ID_SUBUNPENGAB', CHtml::listData(SubunPengabdian::model()->findAll(), 'ID_SUBUNPENGAB', 'SUBUNPENGAB'),array('class'=>'form-control','empty'=>'- Pilih Sub Unsur -')); ?>
		<?php echo $form->error($model,'ID_SUBUNPENGAB'); ?>
            </div>
	</div>
        
	<!--<div class="control-group">
		<?php echo $form->labelEx($model,'ID_UNSUR_PENGABDIAN',array('class'=>'col-md-3 control-label')); ?>
            <div class="controls">
		<?php echo $form->textField($model,'ID_UNSUR_PENGABDIAN',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'ID_UNSUR_PENGABDIAN'); ?>
            </div>
            <div class="control-group">
		<?php echo $form->labelEx($model,'TGL_SUBMIT',array('class'=>'col-md-3 control-label')); ?>
            <div class="controls">
		<?php echo $form->textField($model,'TGL_SUBMIT',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'TGL_SUBMIT'); ?>
            </div>
	</div>
	</div>-->

	<div class="form-group">
		<?php echo $form->labelEx($model,'KEGIATAN_PENGABDIAN',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->textArea($model,'KEGIATAN_PENGABDIAN',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'KEGIATAN_PENGABDIAN'); ?>
            </div>
	</div>
        
        <div class="form-group">
		<?php echo $form->labelEx($model,'BENTUK_PENGABDIAN',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->textField($model,'BENTUK_PENGABDIAN',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'BENTUK_PENGABDIAN'); ?>
            </div>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'TEMPAT_PENGABDIAN',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->textField($model,'TEMPAT_PENGABDIAN',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'TEMPAT_PENGABDIAN'); ?>
            </div>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'TGL_PENGABDIAN',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php //echo $form->textField($model,'TGL_PENGABDIAN',array('class'=>'span6 m-wrap')); ?>
                <?php $this->widget('zii.widgets.jui.CJuiDatePicker', 
                        array(
                            'model'=>$model,
                            'attribute'=>'TGL_PENGABDIAN',
                            'value'=>$model->TGL_PENGABDIAN,
                           // 'class'=>'form-control',
                            'options'=>array(
                                'dateFormat'=>'yy-mm-dd',
                             //   'showOn'=>'button',
                                'yearRange'=>'-60',
                                'changeMonth'=>'true',
                                'changeYear'=>'true',
                                'constrainInput'=>'false',
                                'duration'=>'fast',
                                'showAnim'=>'slide',
                            ),
                            'htmlOptions'=>array('class'=>'form-control',))); ?>
		<?php echo $form->error($model,'TGL_PENGABDIAN'); ?>
            </div>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'BUKTI_PENGABDIAN',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->textField($model,'BUKTI_PENGABDIAN',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'BUKTI_PENGABDIAN'); ?>
            </div>
	</div>

	<div class="form-actions fluid">
            <div class="col-md-offset-3 col-md-9">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Simpan' : 'Save', array('class'=>'btn btn-primary')); ?>
                <?php echo CHtml::link('Kembali',array('unsurPengabdian/bdosen&id='.$model->PENGAJUAN_KE,'id_dosen'=>$model->ID_DOSEN),array('class'=>'btn btn-success btn-md'));?>
            </div>
	</div>
<?php $this->endWidget(); ?>
</div><!-- form -->
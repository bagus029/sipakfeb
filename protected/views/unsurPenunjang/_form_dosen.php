<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'unsur-penunjang-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
        'htmlOptions'=>array('class'=>'form-horizontal form-bordered'),
)); ?>
<div class="form-body">
	<?php echo $form->errorSummary($model); ?>

	<!--<div class="form-group">
		<?php echo $form->labelEx($model,'ID_UNSUR_PENUNJANG',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->textField($model,'ID_UNSUR_PENUNJANG',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'ID_UNSUR_PENUNJANG'); ?>
            </div>
	</div>-->
        
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
                <?php echo $form->error($model, 'PENGAJUAN_KE'); ?>
            </div>
        </div>
        
        <div class="form-group">
		<?php echo $form->labelEx($model,'ID_SUBUNPENUNJANG',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
                <?php echo $form->dropDownList($model,'ID_SUBUNPENUNJANG', CHtml::listData(SubunPenunjang::model()->findAll(), 'ID_SUBUNPENUNJANG', 'SUBUNPENUNJANG'),array('class'=>'form-control','empty'=>'- Pilih Sub Unsur -')); ?>
		<?php echo $form->error($model,'ID_SUBUNPENUNJANG'); ?>
            </div>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'KEGIATAN_PENUNJANG',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->textArea($model,'KEGIATAN_PENUNJANG',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'KEGIATAN_PENUNJANG'); ?>
            </div>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'TEMPAT_PENUNJANG',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->textField($model,'TEMPAT_PENUNJANG',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'TEMPAT_PENUNJANG'); ?>
            </div>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'TGL_KEG_PENUNJANG',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php //echo $form->textField($model,'TGL_KEG_PENUNJANG',array('class'=>'form-control')); ?>
		<?php $this->widget('zii.widgets.jui.CJuiDatePicker', 
                        array(
                            'model'=>$model,
                            'attribute'=>'TGL_KEG_PENUNJANG',
                            'value'=>$model->TGL_KEG_PENUNJANG,
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
		<?php echo $form->error($model,'TGL_KEG_PENUNJANG'); ?>
            </div>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'BUKTI_PENUNJANG',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->textField($model,'BUKTI_PENUNJANG',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'BUKTI_PENUNJANG'); ?>
            </div>
	</div>
        
        <div class="form-group">
                <?php echo $form->labelEx($model,'KEDUDUKAN_SEBAGAI',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
                <?php echo $form->textField($model,'KEDUDUKAN_SEBAGAI',array('class'=>'form-control')); ?>
                <?php echo $form->error($model,'KEDUDUKAN_SEBAGAI'); ?>
            </div>
        </div>
	<!--<div class="control-group">
		<?php echo $form->labelEx($model,'TGL_SUBMIT',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->textField($model,'TGL_SUBMIT',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'TGL_SUBMIT'); ?>
            </div>
	</div>-->

	<div class="form-actions fluid">
            <div class="col-md-offset-3 col-md-9">
			<?php echo CHtml::submitButton($model->isNewRecord ? 'Simpan' : 'Save', array('class'=>'btn btn-primary')); ?>
            <?php echo CHtml::link('Kembali',array('unsurPenunjang/bdosen&id='.$model->PENGAJUAN_KE,'id_dosen'=>$model->ID_DOSEN),array('class'=>'btn btn-success btn-md'));?>
            </div>
	</div>
<?php $this->endWidget(); ?>
</div><!-- form -->
<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'tbl-info-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
        'htmlOptions'=>array('class'=>'form-horizontal'),
)); ?>
 <div class="form-body">
	<?php echo $form->errorSummary($model); ?>

	<div class="form-group">
		<?php echo $form->labelEx($model,'unsur',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php //echo $form->textField($model,'unsur',array('class'=>'form-control')); ?>
                <?php echo $form->dropDownList($model,'unsur',$model->getUnsur(), array('class'=>'form-control','empty'=>'- Pilih Unsur -')) ?>
		<?php echo $form->error($model,'unsur'); ?>
            </div>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'sub_unsur',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
                <?php echo $form->textArea($model,'sub_unsur',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'sub_unsur'); ?>
            </div>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'detail_sub_unsur',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->textField($model,'detail_sub_unsur',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'detail_sub_unsur'); ?>
            </div>
	</div>
     
        <div class="form-group">
		<?php echo $form->labelEx($model,'persentase',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->textField($model,'persentase',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'persentase'); ?>
            </div>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'tiga_be',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->textField($model,'tiga_be',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'tiga_be'); ?>
            </div>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'tiga_ce',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->textField($model,'tiga_ce',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'tiga_ce'); ?>
            </div>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'tida_de',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->textField($model,'tida_de',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'tida_de'); ?>
            </div>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'empat_a',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->textField($model,'empat_a',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'empat_a'); ?>
            </div>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'empat_be',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->textField($model,'empat_be',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'empat_be'); ?>
            </div>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'empat_ce',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->textField($model,'empat_ce',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'empat_ce'); ?>
            </div>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'empat_de',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->textField($model,'empat_de',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'empat_de'); ?>
            </div>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'empat_e',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->textField($model,'empat_e',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'empat_e'); ?>
            </div>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'jenjang_pendidikan',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php //echo $form->textField($model,'jenjang_pendidikan',array('class'=>'form-control')); ?>
                <?php echo $form->dropDownList($model,'jenjang_pendidikan',$model->getJenjang(), array('class'=>'form-control','empty'=>'- Pilih Jenjang -')) ?>
		<?php echo $form->error($model,'jenjang_pendidikan'); ?>
            </div>
	</div>

	<div class="form-actions fluid">
            <div class="col-md-offset-3 col-md-9">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Simpan' : 'Save', array('class'=>'btn btn-primary')); ?>
                <?php echo CHtml::link('Kembali',array('admin'),array('class'=>'btn btn-success btn-md'));?>
            </div>
	</div>
<?php $this->endWidget(); ?>
</div><!-- form -->
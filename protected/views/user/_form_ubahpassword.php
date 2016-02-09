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
		<?php echo $form->labelEx($model,'ID_USER',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->textField($model,'ID_USER',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'ID_USER'); ?>
            </div>
	</div>
        
        <div class="form-group">
            <?php echo $form->labelEx($model,'LEVEL',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
                <?php echo $form->dropDownList($model,'LEVEL',$model->getLevel(), array('class'=>'form-control','empty'=>'- Pilih Level -')) ?>
                <?php echo $form->error($model,'LEVEL');?>
            </div>
        </div>
        <div class="form-group">
		<?php echo $form->labelEx($model,'NIP_USER',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->textField($model,'NIP_USER',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'NIP_USER'); ?>
            </div>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'NAMA_USER',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->textField($model,'NAMA_USER',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'NAMA_USER'); ?>
            </div>
	</div>
        -->

	<div class="form-group">
		<?php echo $form->labelEx($model,'USERNAME',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->textField($model,'USERNAME',array('class'=>'form-control','readOnly'=>true)); ?>
		<?php echo $form->error($model,'USERNAME'); ?>
            </div>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'PASSWORD',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->passwordField($model,'PASSWORD',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'PASSWORD'); ?>
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
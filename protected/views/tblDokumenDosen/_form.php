<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'tbl-dokumen-dosen-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
        'htmlOptions'=>array('enctype'=>'multipart/form-data', 'class'=>'form-horizontal'),
)); ?>
<div class="form-body">
	<?php echo $form->errorSummary($model); ?>

	<div class="form-group">
		<?php echo $form->labelEx($model,'NIP_DOSEN',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
                <?php //echo $form->textField($model,'ID_DOSEN',array('class'=>'span6 m-wrap','readonly'=>true)); ?>
                <?php echo $form->dropDownList($model,'NIP_DOSEN', CHtml::listData(TblDosen::model()->findAll('NIP_DOSEN'), 'NIP_DOSEN', 'NAMA_DOSEN'),array('class'=>'form-control','readonly'=>true)); ?>
		<?php echo $form->error($model,'NIP_DOSEN'); ?>
            </div>
        </div>
        
        <div class="form-group">
                <?php echo $form->labelEx($model, 'DOKUMEN',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
                <?php echo $form->fileField($model,'DOKUMEN'); ?>
                <?php echo $form->error($model, 'DOKUMEN'); ?>
            </div>
        </div>
        
	<div class="form-group">
		<?php echo $form->labelEx($model,'NAMA_DOKUMEN',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->textField($model,'NAMA_DOKUMEN',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'NAMA_DOKUMEN'); ?>
            </div>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'KETERANGAN',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->textArea($model,'KETERANGAN',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'KETERANGAN'); ?>
            </div>
	</div>

	<div class="form-actions fluid">
            <div class="col-md-offset-3 col-md-9">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Simpan' : 'Save', array('class'=>'btn btn-primary')); ?>
                <?php echo CHtml::link('Kembali',array('indexDosen'),array('class'=>'btn btn-success btn-md'));?>
            </div>
	</div>
<?php $this->endWidget(); ?>
</div><!-- form -->
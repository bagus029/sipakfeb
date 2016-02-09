<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'tbl-jurusan-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,'htmlOptions'=>array('class'=>'form-horizontal'),
)); ?>
<div class="form-body">
	<?php echo $form->errorSummary($model); ?>

        <div class="form-group">
		<?php echo $form->labelEx($model,'NAMA_JURUSAN',array('class'=>'col-md-3 control-label')); ?>
            <div class="controls">
		<?php echo $form->textField($model,'NAMA_JURUSAN',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'NAMA_JURUSAN'); ?>
            </div>
	</div>
        
        <div class="form-group">
		<?php echo $form->labelEx($model,'ID_FAKULTAS',array('class'=>'col-md-3 control-label')); ?>
            <div class="controls">
		<?php //echo $form->textField($model,'ID_FAKULTAS',array('class'=>'span6 m-wrap')); ?>
                <?php echo $form->dropDownList($model,'ID_FAKULTAS', CHtml::listData(TblFakultas::model()->findAll(), 'ID_FAKULTAS', 'NAMA_FAKULTAS'),array('class'=>'form-control','empty'=>'- Pilih Fakultas -')); ?>
		<?php echo $form->error($model,'ID_FAKULTAS'); ?>
            </div>
	</div>
        
	<div class="form-group">
		<?php echo $form->labelEx($model,'NAMA_PIMPINAN',array('class'=>'col-md-3 control-label')); ?>
            <div class="controls">
		<?php echo $form->textField($model,'NAMA_PIMPINAN',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'NAMA_PIMPINAN'); ?>
            </div>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'NIP_PIMPINAN',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->textField($model,'NIP_PIMPINAN',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'NIP_PIMPINAN'); ?>
            </div>
	</div>
        
       <div class="form-group">
		<?php echo $form->labelEx($model,'PANGKAT',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->textField($model,'PANGKAT',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'PANGKAT'); ?>
            </div>
	</div>
        
        <div class="form-group">
		<?php echo $form->labelEx($model,'GOLONGAN',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->textField($model,'GOLONGAN',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'GOLONGAN'); ?>
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
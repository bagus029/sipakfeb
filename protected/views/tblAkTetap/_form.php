<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'tbl-ak-tetap-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,'htmlOptions'=>array('class'=>'form-horizontal'),
)); ?>
 <div class="form-body">
	<?php echo $form->errorSummary($model); ?>

	<div class="form-group">
		<?php echo $form->labelEx($model,'ID_DOSEN',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php //echo $form->textField($model,'ID_DOSEN',array('class'=>'span6 m-wrap')); ?>
                <?php echo $form->dropDownList($model,'ID_DOSEN', CHtml::listData(TblDosen::model()->findAll(), 'ID_DOSEN', 'NAMA_DOSEN'),array('class'=>'form-control','readonly'=>true)); ?>
		<?php echo $form->error($model,'ID_DOSEN'); ?>
            </div>
	</div>
        
        <div class="form-group">
		<?php echo $form->labelEx($model,'ID_AK_UNSUR',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php //echo $form->textField($model,'ID_AK_UNSUR',array('class'=>'span6 m-wrap')); ?>
                <?php echo $form->dropDownList($model, 'ID_AK_UNSUR', CHtml::listData(AkUnsur::model()->findAll(), 'ID_AK_UNSUR', 'AK_UNSUR'),array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'ID_AK_UNSUR'); ?>
            </div>
	</div>
        
        <div class="form-group">
                <?php echo $form->labelEx($model,'JENJANG_JABATAN', array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
                <?php echo $form->textField($model,'JENJANG_JABATAN', array('class'=>'form-control','readonly'=>true)); ?>
                <?php echo $form->error($model, 'JENJANG_JABATAN'); ?>
            </div>
        </div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'ANGKA_LAMA',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->textField($model,'ANGKA_LAMA',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'ANGKA_LAMA'); ?>
            </div>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'ANGKA_BARU',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->textField($model,'ANGKA_BARU',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'ANGKA_BARU'); ?>
            </div>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'ANGKA_DIGUNAKAN',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->textField($model,'ANGKA_DIGUNAKAN',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'ANGKA_DIGUNAKAN'); ?>
            </div>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'ANGKA_LEBIHAN',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->textField($model,'ANGKA_LEBIHAN',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'ANGKA_LEBIHAN'); ?>
            </div>
	</div>
        
        <div class="form-group">
		<?php echo $form->labelEx($model,'NO_SK',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->textField($model,'NO_SK',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'NO_SK'); ?>
            </div>
	</div>

	<div class="form-actions fluid">
            <div class="col-md-offset-3 col-md-9">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Simpan' : 'Save', array('class'=>'btn btn-primary')); ?>
                <?php echo CHtml::link('Kembali',array('tblDosen/viewaktetap&id='.$model->ID_DOSEN),array('class'=>'btn btn-success btn-md'));?>
            </div>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->
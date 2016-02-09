<?php
/* @var $this TblCutiController */
/* @var $model TblCuti */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'ID_CUTI'); ?>
		<?php echo $form->textField($model,'ID_CUTI'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'ID_DOSEN'); ?>
		<?php echo $form->textField($model,'ID_DOSEN'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'JENIS_CUTI'); ?>
		<?php echo $form->textField($model,'JENIS_CUTI',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'MULAI_CUTI'); ?>
		<?php echo $form->textField($model,'MULAI_CUTI'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'AKHIR_CUTI'); ?>
		<?php echo $form->textField($model,'AKHIR_CUTI'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'KET_CUTI'); ?>
		<?php echo $form->textArea($model,'KET_CUTI',array('rows'=>6, 'cols'=>50)); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->
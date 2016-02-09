<?php
/* @var $this TblPersenController */
/* @var $model TblPersen */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'id_persen'); ?>
		<?php echo $form->textField($model,'id_persen'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'jabatan'); ?>
		<?php echo $form->textField($model,'jabatan',array('size'=>30,'maxlength'=>30)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'kualifikasi_akad'); ?>
		<?php echo $form->textField($model,'kualifikasi_akad',array('size'=>25,'maxlength'=>25)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'pel_pend'); ?>
		<?php echo $form->textField($model,'pel_pend'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'pel_pen'); ?>
		<?php echo $form->textField($model,'pel_pen'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'pel_peng'); ?>
		<?php echo $form->textField($model,'pel_peng'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'unsur_penunjang'); ?>
		<?php echo $form->textField($model,'unsur_penunjang'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->
<?php
/* @var $this TblGajiController */
/* @var $model TblGaji */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'ID_GAJI'); ?>
		<?php echo $form->textField($model,'ID_GAJI'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'ID_DOSEN'); ?>
		<?php echo $form->textField($model,'ID_DOSEN'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'TGL_GAJIAN'); ?>
		<?php echo $form->textField($model,'TGL_GAJIAN'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'GAJI_POKOK'); ?>
		<?php echo $form->textField($model,'GAJI_POKOK'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->
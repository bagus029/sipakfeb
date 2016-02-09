<?php
/* @var $this TblGolonganController */
/* @var $model TblGolongan */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'ID_GOLONGAN'); ?>
		<?php echo $form->textField($model,'ID_GOLONGAN'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'GOLONGAN'); ?>
		<?php echo $form->textField($model,'GOLONGAN',array('size'=>6,'maxlength'=>6)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'PANGKAT'); ?>
		<?php echo $form->textField($model,'PANGKAT',array('size'=>25,'maxlength'=>25)); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->
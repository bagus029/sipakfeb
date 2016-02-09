<?php
/* @var $this SubunPenelitianController */
/* @var $model SubunPenelitian */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'ID_SUBUNPENELITIAN'); ?>
		<?php echo $form->textField($model,'ID_SUBUNPENELITIAN'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'SUBUNPENELITIAN'); ?>
		<?php echo $form->textArea($model,'SUBUNPENELITIAN',array('rows'=>6, 'cols'=>50)); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->
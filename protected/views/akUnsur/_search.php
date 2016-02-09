<?php
/* @var $this AkUnsurController */
/* @var $model AkUnsur */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'AK_UNSUR'); ?>
		<?php echo $form->textArea($model,'AK_UNSUR',array('rows'=>6, 'cols'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'ID_AK_UNSUR'); ?>
		<?php echo $form->textField($model,'ID_AK_UNSUR'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->
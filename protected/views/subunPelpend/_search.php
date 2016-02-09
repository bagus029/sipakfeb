<?php
/* @var $this SubunPelpendController */
/* @var $model SubunPelpend */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'ID_SUBPELPEND'); ?>
		<?php echo $form->textField($model,'ID_SUBPELPEND'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'SUBPELPEND'); ?>
		<?php echo $form->textArea($model,'SUBPELPEND',array('rows'=>6, 'cols'=>50)); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->
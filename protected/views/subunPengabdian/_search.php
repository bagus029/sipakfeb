<?php
/* @var $this SubunPengabdianController */
/* @var $model SubunPengabdian */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'ID_SUBUNPENGAB'); ?>
		<?php echo $form->textField($model,'ID_SUBUNPENGAB'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'SUBUNPENGAB'); ?>
		<?php echo $form->textArea($model,'SUBUNPENGAB',array('rows'=>6, 'cols'=>50)); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->
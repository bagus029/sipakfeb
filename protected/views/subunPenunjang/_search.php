<?php
/* @var $this SubunPenunjangController */
/* @var $model SubunPenunjang */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'ID_SUBUNPENUNJANG'); ?>
		<?php echo $form->textField($model,'ID_SUBUNPENUNJANG'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'SUBUNPENUNJANG'); ?>
		<?php echo $form->textArea($model,'SUBUNPENUNJANG',array('rows'=>6, 'cols'=>50)); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->
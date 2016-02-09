<?php
/* @var $this SubunPendController */
/* @var $model SubunPend */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'ID_SUBUNPEND'); ?>
		<?php echo $form->textField($model,'ID_SUBUNPEND'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'SUBUNPEND'); ?>
		<?php echo $form->textField($model,'SUBUNPEND',array('size'=>15,'maxlength'=>15)); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->
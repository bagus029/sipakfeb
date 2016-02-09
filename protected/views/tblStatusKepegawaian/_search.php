<?php
/* @var $this TblStatusKepegawaianController */
/* @var $model TblStatusKepegawaian */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'ID_STATUS_KEP'); ?>
		<?php echo $form->textField($model,'ID_STATUS_KEP'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'STATUS_KEP'); ?>
		<?php echo $form->textField($model,'STATUS_KEP',array('size'=>45,'maxlength'=>45)); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->
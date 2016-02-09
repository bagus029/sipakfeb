<?php
/* @var $this TblInfoController */
/* @var $model TblInfo */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'id_info'); ?>
		<?php echo $form->textField($model,'id_info'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'unsur'); ?>
		<?php echo $form->textField($model,'unsur',array('size'=>25,'maxlength'=>25)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'sub_unsur'); ?>
		<?php echo $form->textField($model,'sub_unsur',array('size'=>45,'maxlength'=>45)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'detail_sub_unsur'); ?>
		<?php echo $form->textField($model,'detail_sub_unsur',array('size'=>35,'maxlength'=>35)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'tiga_be'); ?>
		<?php echo $form->textField($model,'tiga_be'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'tiga_ce'); ?>
		<?php echo $form->textField($model,'tiga_ce'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'tida_de'); ?>
		<?php echo $form->textField($model,'tida_de'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'empat_a'); ?>
		<?php echo $form->textField($model,'empat_a'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'empat_be'); ?>
		<?php echo $form->textField($model,'empat_be'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'empat_ce'); ?>
		<?php echo $form->textField($model,'empat_ce'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'empat_de'); ?>
		<?php echo $form->textField($model,'empat_de'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'empat_e'); ?>
		<?php echo $form->textField($model,'empat_e'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'jenjang_pendidikan'); ?>
		<?php echo $form->textField($model,'jenjang_pendidikan',array('size'=>4,'maxlength'=>4)); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->
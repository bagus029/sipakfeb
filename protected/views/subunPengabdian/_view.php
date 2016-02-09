<?php
/* @var $this SubunPengabdianController */
/* @var $data SubunPengabdian */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('ID_SUBUNPENGAB')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->ID_SUBUNPENGAB), array('view', 'id'=>$data->ID_SUBUNPENGAB)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('SUBUNPENGAB')); ?>:</b>
	<?php echo CHtml::encode($data->SUBUNPENGAB); ?>
	<br />


</div>
<?php
/* @var $this AkUnsurController */
/* @var $data AkUnsur */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('ID_AK_UNSUR')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->ID_AK_UNSUR), array('view', 'id'=>$data->ID_AK_UNSUR)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('AK_UNSUR')); ?>:</b>
	<?php echo CHtml::encode($data->AK_UNSUR); ?>
	<br />


</div>
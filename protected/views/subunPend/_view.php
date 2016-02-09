<?php
/* @var $this SubunPendController */
/* @var $data SubunPend */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('ID_SUBUNPEND')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->ID_SUBUNPEND), array('view', 'id'=>$data->ID_SUBUNPEND)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('SUBUNPEND')); ?>:</b>
	<?php echo CHtml::encode($data->SUBUNPEND); ?>
	<br />


</div>
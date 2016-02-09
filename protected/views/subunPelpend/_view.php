<?php
/* @var $this SubunPelpendController */
/* @var $data SubunPelpend */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('ID_SUBPELPEND')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->ID_SUBPELPEND), array('view', 'id'=>$data->ID_SUBPELPEND)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('SUBPELPEND')); ?>:</b>
	<?php echo CHtml::encode($data->SUBPELPEND); ?>
	<br />


</div>
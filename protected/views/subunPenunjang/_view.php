<?php
/* @var $this SubunPenunjangController */
/* @var $data SubunPenunjang */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('ID_SUBUNPENUNJANG')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->ID_SUBUNPENUNJANG), array('view', 'id'=>$data->ID_SUBUNPENUNJANG)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('SUBUNPENUNJANG')); ?>:</b>
	<?php echo CHtml::encode($data->SUBUNPENUNJANG); ?>
	<br />


</div>
<?php
/* @var $this SubunPenelitianController */
/* @var $data SubunPenelitian */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('ID_SUBUNPENELITIAN')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->ID_SUBUNPENELITIAN), array('view', 'id'=>$data->ID_SUBUNPENELITIAN)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('SUBUNPENELITIAN')); ?>:</b>
	<?php echo CHtml::encode($data->SUBUNPENELITIAN); ?>
	<br />


</div>
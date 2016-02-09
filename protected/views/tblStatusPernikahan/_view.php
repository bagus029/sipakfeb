<?php
/* @var $this TblStatusPernikahanController */
/* @var $data TblStatusPernikahan */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('ID_STATUS')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->ID_STATUS), array('view', 'id'=>$data->ID_STATUS)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('STATUS')); ?>:</b>
	<?php echo CHtml::encode($data->STATUS); ?>
	<br />


</div>
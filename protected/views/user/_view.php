<?php
/* @var $this UserController */
/* @var $data User */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('ID_USER')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->ID_USER), array('view', 'id'=>$data->ID_USER)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('NIP_USER')); ?>:</b>
	<?php echo CHtml::encode($data->NIP_USER); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('NAMA_USER')); ?>:</b>
	<?php echo CHtml::encode($data->NAMA_USER); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('USERNAME')); ?>:</b>
	<?php echo CHtml::encode($data->USERNAME); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('PASSWORD')); ?>:</b>
	<?php echo CHtml::encode($data->PASSWORD); ?>
	<br />


</div>
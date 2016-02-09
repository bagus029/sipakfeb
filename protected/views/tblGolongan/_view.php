<?php
/* @var $this TblGolonganController */
/* @var $data TblGolongan */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('ID_GOLONGAN')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->ID_GOLONGAN), array('view', 'id'=>$data->ID_GOLONGAN)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('GOLONGAN')); ?>:</b>
	<?php echo CHtml::encode($data->GOLONGAN); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('PANGKAT')); ?>:</b>
	<?php echo CHtml::encode($data->PANGKAT); ?>
	<br />


</div>
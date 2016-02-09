<?php
/* @var $this TblInfoController */
/* @var $data TblInfo */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id_info')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id_info), array('view', 'id'=>$data->id_info)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('unsur')); ?>:</b>
	<?php echo CHtml::encode($data->unsur); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('sub_unsur')); ?>:</b>
	<?php echo CHtml::encode($data->sub_unsur); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('detail_sub_unsur')); ?>:</b>
	<?php echo CHtml::encode($data->detail_sub_unsur); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('tiga_be')); ?>:</b>
	<?php echo CHtml::encode($data->tiga_be); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('tiga_ce')); ?>:</b>
	<?php echo CHtml::encode($data->tiga_ce); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('tida_de')); ?>:</b>
	<?php echo CHtml::encode($data->tida_de); ?>
	<br />

	<?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('empat_a')); ?>:</b>
	<?php echo CHtml::encode($data->empat_a); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('empat_be')); ?>:</b>
	<?php echo CHtml::encode($data->empat_be); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('empat_ce')); ?>:</b>
	<?php echo CHtml::encode($data->empat_ce); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('empat_de')); ?>:</b>
	<?php echo CHtml::encode($data->empat_de); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('empat_e')); ?>:</b>
	<?php echo CHtml::encode($data->empat_e); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('jenjang_pendidikan')); ?>:</b>
	<?php echo CHtml::encode($data->jenjang_pendidikan); ?>
	<br />

	*/ ?>

</div>
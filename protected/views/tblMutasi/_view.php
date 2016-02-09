<?php
/* @var $this TblMutasiController */
/* @var $data TblMutasi */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('ID_MUTASI')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->ID_MUTASI), array('view', 'id'=>$data->ID_MUTASI)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('ID_DOSEN')); ?>:</b>
	<?php echo CHtml::encode($data->ID_DOSEN); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('JABTAN_LAMA')); ?>:</b>
	<?php echo CHtml::encode($data->JABTAN_LAMA); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('UNIT_KERJA_LAMA')); ?>:</b>
	<?php echo CHtml::encode($data->UNIT_KERJA_LAMA); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('TMT_LAMA')); ?>:</b>
	<?php echo CHtml::encode($data->TMT_LAMA); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('JABATAN_BARU')); ?>:</b>
	<?php echo CHtml::encode($data->JABATAN_BARU); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('UNIT_KERJA_BARU')); ?>:</b>
	<?php echo CHtml::encode($data->UNIT_KERJA_BARU); ?>
	<br />

	<?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('TMT_BARU')); ?>:</b>
	<?php echo CHtml::encode($data->TMT_BARU); ?>
	<br />

	*/ ?>

</div>
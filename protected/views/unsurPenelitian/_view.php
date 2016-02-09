<?php
/* @var $this UnsurPenelitianController */
/* @var $data UnsurPenelitian */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('ID_UNSUR_PENELITIAN')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->ID_UNSUR_PENELITIAN), array('view', 'id'=>$data->ID_UNSUR_PENELITIAN)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('ID_SUBUNPENELITIAN')); ?>:</b>
	<?php echo CHtml::encode($data->ID_SUBUNPENELITIAN); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('ID_DOSEN')); ?>:</b>
	<?php echo CHtml::encode($data->ID_DOSEN); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('KEGIATAN_PENELITIAN')); ?>:</b>
	<?php echo CHtml::encode($data->KEGIATAN_PENELITIAN); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('TEMPAT_PENELITIAN')); ?>:</b>
	<?php echo CHtml::encode($data->TEMPAT_PENELITIAN); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('TGL_PENELITIAN')); ?>:</b>
	<?php echo CHtml::encode($data->TGL_PENELITIAN); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('BUKTI_PENELITIAN')); ?>:</b>
	<?php echo CHtml::encode($data->BUKTI_PENELITIAN); ?>
	<br />

	<?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('NILAI_PENELITIAN')); ?>:</b>
	<?php echo CHtml::encode($data->NILAI_PENELITIAN); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('TGL_SUBMIT')); ?>:</b>
	<?php echo CHtml::encode($data->TGL_SUBMIT); ?>
	<br />

	*/ ?>

</div>
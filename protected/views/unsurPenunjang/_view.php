<?php
/* @var $this UnsurPenunjangController */
/* @var $data UnsurPenunjang */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('ID_UNSUR_PENUNJANG')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->ID_UNSUR_PENUNJANG), array('view', 'id'=>$data->ID_UNSUR_PENUNJANG)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('ID_SUBUNPENUNJANG')); ?>:</b>
	<?php echo CHtml::encode($data->ID_SUBUNPENUNJANG); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('ID_DOSEN')); ?>:</b>
	<?php echo CHtml::encode($data->ID_DOSEN); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('KEGIATAN_PENUNJANG')); ?>:</b>
	<?php echo CHtml::encode($data->KEGIATAN_PENUNJANG); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('TEMPAT_PENUNJANG')); ?>:</b>
	<?php echo CHtml::encode($data->TEMPAT_PENUNJANG); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('TGL_KEG_PENUNJANG')); ?>:</b>
	<?php echo CHtml::encode($data->TGL_KEG_PENUNJANG); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('BUKTI_PENUNJANG')); ?>:</b>
	<?php echo CHtml::encode($data->BUKTI_PENUNJANG); ?>
	<br />

	<?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('NILAI_PENUNJANG')); ?>:</b>
	<?php echo CHtml::encode($data->NILAI_PENUNJANG); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('TGL_SUBMIT')); ?>:</b>
	<?php echo CHtml::encode($data->TGL_SUBMIT); ?>
	<br />

	*/ ?>

</div>
<?php
/* @var $this TblStatusKepegawaianController */
/* @var $data TblStatusKepegawaian */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('ID_STATUS_KEP')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->ID_STATUS_KEP), array('view', 'id'=>$data->ID_STATUS_KEP)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('STATUS_KEP')); ?>:</b>
	<?php echo CHtml::encode($data->STATUS_KEP); ?>
	<br />


</div>
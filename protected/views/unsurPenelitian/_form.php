<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'unsur-penelitian-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
        'htmlOptions'=>array('class'=>'form-horizontal form-bordered'),
)); ?>
 <div class="form-body">
	<?php echo $form->errorSummary($model); ?>

	<!--<div class="form-group">
		<?php echo $form->labelEx($model,'ID_UNSUR_PENELITIAN',array('class'=>'col-md-3 control-label')); ?>
            <div class="controls">
		<?php echo $form->textField($model,'ID_UNSUR_PENELITIAN',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'ID_UNSUR_PENELITIAN'); ?>
            </div>
	</div>-->
        
        <div class="form-group">
		<?php echo $form->labelEx($model,'ID_DOSEN',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php //echo $form->textField($model,'ID_DOSEN',array('class'=>'span6 m-wrap')); ?>
                <?php echo $form->dropDownList($model,'ID_DOSEN', CHtml::listData(TblDosen::model()->findAll(), 'ID_DOSEN', 'NAMA_DOSEN'),array('class'=>'form-control','readonly'=>true)); ?>
		<?php echo $form->error($model,'ID_DOSEN'); ?>
            </div>
	</div>
        
        <div class="form-group">
                <?php echo $form->labelEx($model, 'PENGAJUAN_KE', array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
                <?php echo $form->dropDownList($model, 'PENGAJUAN_KE', $model->getPengajuan(), array('class'=>'form-control','readonly'=>true)); ?>
                <?php echo $form->error($model, 'PENGAJUAN_Ke'); ?>
            </div>
        </div>
        
	<div class="form-group">
		<?php echo $form->labelEx($model,'ID_SUBUNPENELITIAN',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php //echo $form->textField($model,'ID_SUBUNPENELITIAN',array('class'=>'span6 m-wrap')); ?>
                <?php echo $form->dropDownList($model,'ID_SUBUNPENELITIAN', CHtml::listData(SubunPenelitian::model()->findAll(), 'ID_SUBUNPENELITIAN', 'SUBUNPENELITIAN'),array('class'=>'form-control','empty'=>'- Pilih Sub Unsur -')); ?>
		<?php echo $form->error($model,'ID_SUBUNPENELITIAN'); ?>
            </div>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'KEGIATAN_PENELITIAN',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->textArea($model,'KEGIATAN_PENELITIAN',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'KEGIATAN_PENELITIAN'); ?>
            </div>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'TEMPAT_PENELITIAN',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->textField($model,'TEMPAT_PENELITIAN',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'TEMPAT_PENELITIAN'); ?>
            </div>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'TGL_PENELITIAN',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->textField($model,'TGL_PENELITIAN',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'TGL_PENELITIAN'); ?>
            </div>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'BUKTI_PENELITIAN',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->textField($model,'BUKTI_PENELITIAN',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'BUKTI_PENELITIAN'); ?>
            </div>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'NILAI_PENELITIAN',array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
		<?php echo $form->textField($model,'NILAI_PENELITIAN',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'NILAI_PENELITIAN'); ?>
            </div>
	</div>
        
        <div class="form-group">
                <?php echo $form->labelEx($model, 'NILAI_PEER_REVIEW', array('class'=>'col-md-3 control-label')); ?>
            <div class="col-md-4">
                <?php echo $form->textField($model, 'NILAI_PEER_REVIEW', array('class'=>'form-control')); ?>
                <?php echo $form->error($model, 'NILAI_PEER_REVIEW'); ?>
            </div>
        </div>

	<!--<div class="control-group">
		<?php echo $form->labelEx($model,'TGL_SUBMIT',array('class'=>'col-md-3 control-label')); ?>
            <div class="controls">
		<?php echo $form->textField($model,'TGL_SUBMIT',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'TGL_SUBMIT'); ?>
            </div>
	</div>-->

	<div class="form-actions fluid">
            <div class="col-md-offset-3 col-md-9">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Simpan' : 'Save', array('class'=>'btn btn-primary')); ?>
                <?php echo CHtml::link('Kembali',array('tblDosen/viewdosen&id='.$model->ID_DOSEN),array('class'=>'btn btn-success btn-md'));?>
            </div>
	</div>
<?php $this->endWidget(); ?>
</div><!-- form -->
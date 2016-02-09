<div class="portlet box blue">
<div class="portlet-title">
  <div class="caption">
	<i class="fa fa-cogs"></i> View </div>
</div>

<div class="portlet-body">
<div class="table-responsive">
    <?php
foreach ($data as $d);
$criteria = new CDbCriteria();
?>
<embed src="<?php echo Yii::app()->getBaseUrl()?>/dokumen/download/<?php echo $d['lampiran_download']?>" type="application/pdf" width="100%" height="600px"/>
</div>
</div>
</div>
<div class="portlet box green">
<div class="portlet-title">
  <div class="caption">
      <i class="fa fa-pencil-square-o"></i> View Pengajuan Angka Kredit <b><?php //echo $model->NAMA_DOSEN; ?></b>  </div>
</div>
<div class="portlet-body" >
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
		<div class="dashboard-stat red">
                    <div class="visual">
                    <i class="fa fa-dollar"></i>
                    </div>
                    	<div class="details">
                            <div class="desc">
                                Angka Kredit Tetap
                            </div>
			</div>
			<?php echo CHtml::link('<i class="m-icon-swapright m-icon-white"></i><b>Selengkapnya</b>',array('aktetapdosen'),array('class'=>'more'));?>
		</div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
		<div class="dashboard-stat blue">
                    <div class="visual">
                    <i class="fa fa-dollar"></i>
                    </div>
                    	<div class="details">
                            <div class="desc">
                             Pengajuan Angka Kredit
                            </div>
			</div>
			<?php echo CHtml::link('<i class="m-icon-swapright m-icon-white"></i><b>Selengkapnya</b>',array('lihatpengajuan'),array('class'=>'more'));?>
		</div>
            </div>
        </div>
    </div>
</div>
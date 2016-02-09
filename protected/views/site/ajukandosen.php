<?php
$nip=Yii::app()->user->NIP_USER;
$ajukan=Yii::app()->request->getParam('id');

$dosen="select * from tbl_dosen where NIP_DOSEN='$nip'";
$dos=Yii::app()->db->createCommand($dosen)->queryAll();
?>
<?php
foreach ($dos as $d)
    ;
$criteria = new CDbCriteria();
?>
<div class="portlet box red">
	<div class="portlet-title">
		<div class="caption">
			<i class="fa fa-pencil-square-o"></i>
			Tambah Pengajuan Angka Kredit
		</div>
	</div>

<div class="portlet-body">
    <div class="btn-box-row row-fluid" align="center">
			<a class="icon-btn" href="index.php?r=unsurPendidikan/bdosen&id=<?php echo $ajukan?>&id_dosen=<?php echo $d['ID_DOSEN'];?>">
				<i class="fa fa-group"></i>
				<div>Pengajuan</div>
				<span class="badge badge-info"> Bidang Pendidikan </span>
			</a>
    </div>
    <div class="btn-box-row row-fluid" align="center">
			<a class="icon-btn" href="index.php?r=unsurPelPendidikan/bdosen&id=<?php echo $ajukan?>&id_dosen=<?php echo $d['ID_DOSEN'];?>">
				<i class="fa fa-group"></i>
				<div>Pengajuan</div>
				<span class="badge badge-danger"> Bidang Pelaksanaan Pendidikan </span>
			</a>
    </div>
    <div class="btn-box-row row-fluid" align="center">
			<a class="icon-btn" href="index.php?r=unsurPenelitian/bdosen&id=<?php echo $ajukan?>&id_dosen=<?php echo $d['ID_DOSEN'];?>">
				<i class="fa fa-group"></i>
				<div>Pengajuan</div>
				<span class="badge badge-success"> Bidang Penelitian </span>
			</a>
    </div>
    <div class="btn-box-row row-fluid" align="center">
                        <a class="icon-btn" href="index.php?r=unsurPengabdian/bdosen&id=<?php echo $ajukan?>&id_dosen=<?php echo $d['ID_DOSEN'];?>">
				<i class="fa fa-group"></i>
				<div>Pengajuan</div>
				<span class="badge badge-info"> Bidang Pengabdian Masyarakat </span>
			</a>
    </div>
    <div class="btn-box-row row-fluid" align="center">
			<a class="icon-btn" href="index.php?r=unsurPenunjang/bdosen&id=<?php echo $ajukan?>&id_dosen=<?php echo $d['ID_DOSEN'];?>">
				<i class="fa fa-group"></i>
				<div>Pengajuan</div>
				<span class="badge badge-danger"> Bidang Penunjang </span>
			</a>
	</div>	
    </div>												                                                                                                              
</div>
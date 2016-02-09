<?php
foreach ($data as $d)
    ;
$criteria = new CDbCriteria();
?>
<div class="portlet box blue">
    <div class="portlet-title">
        <div class="caption">
            <i class="fa fa-cogs"></i> Detail Data </div>
        <div class="actions">         
            <button class="btn btn-sm red" onclick="history.go(-1);"><i class="fa fa-reply"></i> Kembali </button>
            <?php //echo CHtml::link('<i class="fa fa-plus"></i> Tambah', array('create&id_dosen='.$d['ID_DOSEN'].'&pengajuan='.$d['PENGAJUAN_KE']), array('class' => 'btn btn-sm green')); ?>    
        </div>
    </div>

    <div class="portlet-body">
        <div class="table-responsive">
            <table class="table table-bordered table-striped table-condensed flip-content">
                <thead class="flip-content">
                    <tr>
                        <th>No</th>
                        <th>Unsur Pelaksanaan Pendidikan</th>
                        <th>Tempat Kegiatan</th>
                        <th>Semester</th>
                        <th>Bukti Kegiatan</th>
                        <th>Nilai</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $no = 0;
                    $jumlah_angka = 0;
                    foreach ($data as $x)
                        :
                        ?>
                        <tr>
                            <td><?php echo ++$no; ?></td>
                            <td><?php echo $x['KEGIATAN_PELPEND'] ?></td>
                            <td><?php echo $x['TEMPAT_PELPEND'] ?></td>
                            <td><?php echo $x['SEMESTER'] ?></td>
                            <td><?php echo $x['BUKTI_PELPEND'] ?></td>
                            <td><?php echo $x['NILAI_PELPEND'] ?></td>
                        </tr>
                        <?php
                        $jumlah_angka+=$x['NILAI_PELPEND'];
                        ?>
                        <?php
                    endforeach;
                    ?>
                    <tr>
                        <td colspan="5" align="right"><b>Jumlah Angka :</b></td>
                        <td><?php echo $jumlah_angka; ?></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>  
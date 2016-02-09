<?php
$iddos = $_POST['id'];
$idsubpelpend = $_POST['subun'];
$sql = "select * from unsur_pel_pendidikan where ID_DOSEN='$iddos' and ID_SUBPELPEND='$idsubpelpend'";
$det_pel = Yii::app()->db->createCommand($sql)->queryAll();
?>
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
            foreach ($det_pel as $dp)
                :
                ?>
                <tr>
                    <td><?php echo ++$no; ?></td>
                    <td><?php echo $dp['KEGIATAN_PELPEND'] ?></td>
                    <td><?php echo $dp['TEMPAT_PELPEND'] ?></td>
                    <td><?php echo $dp['SEMESTER'] ?></td>
                    <td><?php echo $dp['BUKTI_PELPEND'] ?></td>
                    <td><?php echo $dp['NILAI_PELPEND'] ?></td>
                </tr>
                <?php
                $jumlah_angka+=$dp['NILAI_PELPEND'];
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
<?php
$nip = Yii::app()->user->NIP_USER;
$dosen = "select * from tbl_dosen where NIP_DOSEN='$nip'";
$sql = "select tbl_ak_tetap.ID_AK_TETAP, ak_unsur.AK_UNSUR, tbl_dosen.NAMA_DOSEN, tbl_dosen.NIP_DOSEN,
                  tbl_ak_tetap.ANGKA_LAMA,tbl_ak_tetap.ANGKA_BARU,tbl_ak_tetap.ANGKA_DIGUNAKAN, tbl_ak_tetap.ANGKA_LEBIHAN,
                  tbl_ak_tetap.NO_SK, tbl_ak_tetap.JENJANG_JABATAN from tbl_ak_tetap join ak_unsur on tbl_ak_tetap.ID_AK_UNSUR=ak_unsur.ID_AK_UNSUR 
                  join tbl_dosen on tbl_ak_tetap.ID_DOSEN=tbl_dosen.ID_DOSEN where NIP_DOSEN='$nip' and JENJANG_JABATAN='III B'";

$sql1 = "select tbl_ak_tetap.ID_AK_TETAP, ak_unsur.AK_UNSUR, tbl_dosen.NAMA_DOSEN, tbl_dosen.NIP_DOSEN,
                  tbl_ak_tetap.ANGKA_LAMA,tbl_ak_tetap.ANGKA_BARU,tbl_ak_tetap.ANGKA_DIGUNAKAN, tbl_ak_tetap.ANGKA_LEBIHAN,
                  tbl_ak_tetap.NO_SK, tbl_ak_tetap.JENJANG_JABATAN from tbl_ak_tetap join ak_unsur on tbl_ak_tetap.ID_AK_UNSUR=ak_unsur.ID_AK_UNSUR 
                  join tbl_dosen on tbl_ak_tetap.ID_DOSEN=tbl_dosen.ID_DOSEN where NIP_DOSEN='$nip' and JENJANG_JABATAN='III C'";

$sql2 = "select tbl_ak_tetap.ID_AK_TETAP, ak_unsur.AK_UNSUR, tbl_dosen.NAMA_DOSEN, tbl_dosen.NIP_DOSEN,
                  tbl_ak_tetap.ANGKA_LAMA,tbl_ak_tetap.ANGKA_BARU,tbl_ak_tetap.ANGKA_DIGUNAKAN, tbl_ak_tetap.ANGKA_LEBIHAN,
                  tbl_ak_tetap.NO_SK, tbl_ak_tetap.JENJANG_JABATAN from tbl_ak_tetap join ak_unsur on tbl_ak_tetap.ID_AK_UNSUR=ak_unsur.ID_AK_UNSUR 
                  join tbl_dosen on tbl_ak_tetap.ID_DOSEN=tbl_dosen.ID_DOSEN where NIP_DOSEN='$nip' and JENJANG_JABATAN='III D'";

$sql3 = "select tbl_ak_tetap.ID_AK_TETAP, ak_unsur.AK_UNSUR, tbl_dosen.NAMA_DOSEN, tbl_dosen.NIP_DOSEN,
                  tbl_ak_tetap.ANGKA_LAMA,tbl_ak_tetap.ANGKA_BARU,tbl_ak_tetap.ANGKA_DIGUNAKAN, tbl_ak_tetap.ANGKA_LEBIHAN,
                  tbl_ak_tetap.NO_SK, tbl_ak_tetap.JENJANG_JABATAN from tbl_ak_tetap join ak_unsur on tbl_ak_tetap.ID_AK_UNSUR=ak_unsur.ID_AK_UNSUR 
                  join tbl_dosen on tbl_ak_tetap.ID_DOSEN=tbl_dosen.ID_DOSEN where NIP_DOSEN='$nip' and JENJANG_JABATAN='IV A'";

$sql4 = "select tbl_ak_tetap.ID_AK_TETAP, ak_unsur.AK_UNSUR, tbl_dosen.NAMA_DOSEN, tbl_dosen.NIP_DOSEN,
                  tbl_ak_tetap.ANGKA_LAMA,tbl_ak_tetap.ANGKA_BARU,tbl_ak_tetap.ANGKA_DIGUNAKAN, tbl_ak_tetap.ANGKA_LEBIHAN,
                  tbl_ak_tetap.NO_SK, tbl_ak_tetap.JENJANG_JABATAN from tbl_ak_tetap join ak_unsur on tbl_ak_tetap.ID_AK_UNSUR=ak_unsur.ID_AK_UNSUR 
                  join tbl_dosen on tbl_ak_tetap.ID_DOSEN=tbl_dosen.ID_DOSEN where NIP_DOSEN='$nip' and JENJANG_JABATAN='IV B'";

$sql5 = "select tbl_ak_tetap.ID_AK_TETAP, ak_unsur.AK_UNSUR, tbl_dosen.NAMA_DOSEN, tbl_dosen.NIP_DOSEN,
                  tbl_ak_tetap.ANGKA_LAMA,tbl_ak_tetap.ANGKA_BARU,tbl_ak_tetap.ANGKA_DIGUNAKAN, tbl_ak_tetap.ANGKA_LEBIHAN,
                  tbl_ak_tetap.NO_SK, tbl_ak_tetap.JENJANG_JABATAN from tbl_ak_tetap join ak_unsur on tbl_ak_tetap.ID_AK_UNSUR=ak_unsur.ID_AK_UNSUR 
                  join tbl_dosen on tbl_ak_tetap.ID_DOSEN=tbl_dosen.ID_DOSEN where NIP_DOSEN='$nip' and JENJANG_JABATAN='IV C'";

$sql6 = "select tbl_ak_tetap.ID_AK_TETAP, ak_unsur.AK_UNSUR, tbl_dosen.NAMA_DOSEN, tbl_dosen.NIP_DOSEN,
                  tbl_ak_tetap.ANGKA_LAMA,tbl_ak_tetap.ANGKA_BARU,tbl_ak_tetap.ANGKA_DIGUNAKAN, tbl_ak_tetap.ANGKA_LEBIHAN,
                  tbl_ak_tetap.NO_SK, tbl_ak_tetap.JENJANG_JABATAN from tbl_ak_tetap join ak_unsur on tbl_ak_tetap.ID_AK_UNSUR=ak_unsur.ID_AK_UNSUR 
                  join tbl_dosen on tbl_ak_tetap.ID_DOSEN=tbl_dosen.ID_DOSEN where NIP_DOSEN='$nip' and JENJANG_JABATAN='IV D'";

$sql7 = "select tbl_ak_tetap.ID_AK_TETAP, ak_unsur.AK_UNSUR, tbl_dosen.NAMA_DOSEN, tbl_dosen.NIP_DOSEN,
                  tbl_ak_tetap.ANGKA_LAMA,tbl_ak_tetap.ANGKA_BARU,tbl_ak_tetap.ANGKA_DIGUNAKAN, tbl_ak_tetap.ANGKA_LEBIHAN,
                  tbl_ak_tetap.NO_SK, tbl_ak_tetap.JENJANG_JABATAN from tbl_ak_tetap join ak_unsur on tbl_ak_tetap.ID_AK_UNSUR=ak_unsur.ID_AK_UNSUR 
                  join tbl_dosen on tbl_ak_tetap.ID_DOSEN=tbl_dosen.ID_DOSEN where NIP_DOSEN='$nip' and JENJANG_JABATAN='IV E'";
$data = Yii::app()->db->createCommand($sql)->queryAll();
$data1 = Yii::app()->db->createCommand($sql1)->queryAll();
$data2 = Yii::app()->db->createCommand($sql2)->queryAll();
$data3 = Yii::app()->db->createCommand($sql3)->queryAll();
$data4 = Yii::app()->db->createCommand($sql4)->queryAll();
$data5 = Yii::app()->db->createCommand($sql5)->queryAll();
$data6 = Yii::app()->db->createCommand($sql6)->queryAll();
$data7 = Yii::app()->db->createCommand($sql7)->queryAll();
$dos = Yii::app()->db->createCommand($dosen)->queryAll();
?>
<?php
foreach ($dos as $d)
    ;
$criteria = new CDbCriteria();
?>
<div class="portlet box green">
    <div class="portlet-title">
        <div class="caption">
            <i class="fa fa-dollar"></i>Angka Kredit Tetap
        </div>
        <div class="tools">
            <a href="javascript:;" class="collapse">
            </a>
            <a href="#portlet-config" data-toggle="modal" class="config">
            </a>
            <a href="javascript:;" class="reload">
            </a>
            <a href="javascript:;" class="remove">
            </a>
        </div>
    </div>
    <div class="portlet-body">
        <div class="panel-group accordion" id="accordion1">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapse_1">
                            Angka Kredit Tetap III B </a>
                    </h4>
                </div>
                <div id="collapse_1" class="panel-collapse collapse">
                    <div class="panel-body">
                        <table border="1" width="100%" style="border-collapse: collapse;" >
                            <tr>
                                <th align="center" style="font-size: 12px;">No</th>
                                <th align="center" style="font-size: 12px;">Nama Dosen</th>
                                <th align="center" style="font-size: 12px;">Kegiatan</th>
                                <th align="center" style="font-size: 12px;">Angka Lama</th>
                                <th align="center" style="font-size: 12px;">Angka Baru</th>
                                <th align="center" style="font-size: 12px;">Angka Digunakan</th>
                                <th align="center" style="font-size: 12px;">Angka Lebihan</th>
                                <th align="center" style="font-size: 12px;">Nomor SK</th>
                            </tr>
                            <!--<tr>
                                    <td><b>A. Kegiatan Pendidikan</b></td>
                            </tr>-->
                            <?php
                            $no = 0;
                            $jum1 = 0;
                            $jum2 = 0;
                            $jum3 = 0;
                            $jum4 = 0;
                            foreach ($data as $x)
                                :
                                ?>
                                <tr>
                                    <td align="center" style="font-size: 12px;"><?php echo ++$no; ?></td>
                                    <td align="center" style="font-size: 12px;"><?php echo $x['NAMA_DOSEN'] ?></td>
                                    <td align="center" style="font-size: 12px;"><?php echo $x['AK_UNSUR'] ?></td>
                                    <td align="center" style="font-size: 12px;"><?php echo $x['ANGKA_LAMA'] ?></td>
                                    <td align="center" style="font-size: 12px;"><?php echo $x['ANGKA_BARU'] ?></td>
                                    <td align="center" style="font-size: 12px;"><?php echo $x['ANGKA_DIGUNAKAN'] ?></td>
                                    <td align="center" style="font-size: 12px;"><?php echo $x['ANGKA_LEBIHAN'] ?></td>
                                    <td align="center" style="font-size: 12px;"><?php echo $x['NO_SK'] ?></td>
                                </tr>
                                <?php
                                $jum1+=$x['ANGKA_LAMA'];
                                $jum2+=$x['ANGKA_BARU'];
                                $jum3+=$x['ANGKA_DIGUNAKAN'];
                                $jum4+=$x['ANGKA_LEBIHAN'];
                                ?>
                                <?php
                            endforeach;
                            ?>
                            <tr>
                                <td colspan="3" align="right" style="font-size: 12px;"><b>Nilai Total :</b></td>
                                <td align="center" style="font-size: 12px;"><?php echo $jum1; ?></td>
                                <td align="center" style="font-size: 12px;"><?php echo $jum2; ?></td>
                                <td align="center" style="font-size: 12px;"><?php echo $jum3; ?></td>
                                <td align="center" style="font-size: 12px;"><?php echo $jum4; ?></td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapse_2">
                            Angka Kredit Tetap III C </a>
                    </h4>
                </div>
                <div id="collapse_2" class="panel-collapse collapse">
                    <div class="panel-body">
                        <table border="1" width="100%" style="border-collapse: collapse;" >
                            <tr>
                                <th align="center" style="font-size: 12px;">No</th>
                                <th align="center" style="font-size: 12px;">Nama Dosen</th>
                                <th align="center" style="font-size: 12px;">Kegiatan</th>
                                <th align="center" style="font-size: 12px;">Angka Lama</th>
                                <th align="center" style="font-size: 12px;">Angka Baru</th>
                                <th align="center" style="font-size: 12px;">Angka Digunakan</th>
                                <th align="center" style="font-size: 12px;">Angka Lebihan</th>
                                <th align="center" style="font-size: 12px;">Nomor SK</th>
                            </tr>
                            <!--<tr>
                                    <td><b>A. Kegiatan Pendidikan</b></td>
                            </tr>-->
                            <?php
                            $no = 0;
                            $jum1 = 0;
                            $jum2 = 0;
                            $jum3 = 0;
                            $jum4 = 0;
                            foreach ($data1 as $s)
                                :
                                ?>
                                <tr>
                                    <td align="center" style="font-size: 12px;"><?php echo ++$no; ?></td>
                                    <td align="center" style="font-size: 12px;"><?php echo $s['NAMA_DOSEN'] ?></td>
                                    <td align="center" style="font-size: 12px;"><?php echo $s['AK_UNSUR'] ?></td>
                                    <td align="center" style="font-size: 12px;"><?php echo $s['ANGKA_LAMA'] ?></td>
                                    <td align="center" style="font-size: 12px;"><?php echo $s['ANGKA_BARU'] ?></td>
                                    <td align="center" style="font-size: 12px;"><?php echo $s['ANGKA_DIGUNAKAN'] ?></td>
                                    <td align="center" style="font-size: 12px;"><?php echo $s['ANGKA_LEBIHAN'] ?></td>
                                    <td align="center" style="font-size: 12px;"><?php echo $s['NO_SK'] ?></td>
                                </tr>
                                <?php
                                $jum1+=$s['ANGKA_LAMA'];
                                $jum2+=$s['ANGKA_BARU'];
                                $jum3+=$s['ANGKA_DIGUNAKAN'];
                                $jum4+=$s['ANGKA_LEBIHAN'];
                                ?>
                                <?php
                            endforeach;
                            ?>
                            <tr>
                                <td colspan="3" align="right" style="font-size: 12px;"><b>Nilai Total :</b></td>
                                <td align="center" style="font-size: 12px;"><?php echo $jum1; ?></td>
                                <td align="center" style="font-size: 12px;"><?php echo $jum2; ?></td>
                                <td align="center" style="font-size: 12px;"><?php echo $jum3; ?></td>
                                <td align="center" style="font-size: 12px;"><?php echo $jum4; ?></td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapse_3">
                            Angka Kredit Tetap III D </a>
                    </h4>
                </div>
                <div id="collapse_3" class="panel-collapse collapse">
                    <div class="panel-body">
                        <table border="1" width="100%" style="border-collapse: collapse;" >
                            <tr>
                                <th align="center" style="font-size: 12px;">No</th>
                                <th align="center" style="font-size: 12px;">Nama Dosen</th>
                                <th align="center" style="font-size: 12px;">Kegiatan</th>
                                <th align="center" style="font-size: 12px;">Angka Lama</th>
                                <th align="center" style="font-size: 12px;">Angka Baru</th>
                                <th align="center" style="font-size: 12px;">Angka Digunakan</th>
                                <th align="center" style="font-size: 12px;">Angka Lebihan</th>
                                <th align="center" style="font-size: 12px;">Nomor SK</th>
                            </tr>
                            <!--<tr>
                                    <td><b>A. Kegiatan Pendidikan</b></td>
                            </tr>-->
                            <?php
                            $no = 0;
                            $jum1 = 0;
                            $jum2 = 0;
                            $jum3 = 0;
                            $jum4 = 0;
                            foreach ($data2 as $b)
                                :
                                ?>
                                <tr>
                                    <td align="center" style="font-size: 12px;"><?php echo ++$no; ?></td>
                                    <td align="center" style="font-size: 12px;"><?php echo $b['NAMA_DOSEN'] ?></td>
                                    <td align="center" style="font-size: 12px;"><?php echo $b['AK_UNSUR'] ?></td>
                                    <td align="center" style="font-size: 12px;"><?php echo $b['ANGKA_LAMA'] ?></td>
                                    <td align="center" style="font-size: 12px;"><?php echo $b['ANGKA_BARU'] ?></td>
                                    <td align="center" style="font-size: 12px;"><?php echo $b['ANGKA_DIGUNAKAN'] ?></td>
                                    <td align="center" style="font-size: 12px;"><?php echo $b['ANGKA_LEBIHAN'] ?></td>
                                    <td align="center" style="font-size: 12px;"><?php echo $b['NO_SK'] ?></td>
                                </tr>
                                <?php
                                $jum1+=$b['ANGKA_LAMA'];
                                $jum2+=$b['ANGKA_BARU'];
                                $jum3+=$b['ANGKA_DIGUNAKAN'];
                                $jum4+=$b['ANGKA_LEBIHAN'];
                                ?>
                                <?php
                            endforeach;
                            ?>
                            <tr>
                                <td colspan="3" align="right" style="font-size: 12px;"><b>Nilai Total :</b></td>
                                <td align="center" style="font-size: 12px;"><?php echo $jum1; ?></td>
                                <td align="center" style="font-size: 12px;"><?php echo $jum2; ?></td>
                                <td align="center" style="font-size: 12px;"><?php echo $jum3; ?></td>
                                <td align="center" style="font-size: 12px;"><?php echo $jum4; ?></td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapse_4">
                            Angka Kredit Tetap IV A </a>
                    </h4>
                </div>
                <div id="collapse_4" class="panel-collapse collapse">
                    <div class="panel-body">
                        <table border="1" width="100%" style="border-collapse: collapse;" >
                            <tr>
                                <th align="center" style="font-size: 12px;">No</th>
                                <th align="center" style="font-size: 12px;">Nama Dosen</th>
                                <th align="center" style="font-size: 12px;">Kegiatan</th>
                                <th align="center" style="font-size: 12px;">Angka Lama</th>
                                <th align="center" style="font-size: 12px;">Angka Baru</th>
                                <th align="center" style="font-size: 12px;">Angka Digunakan</th>
                                <th align="center" style="font-size: 12px;">Angka Lebihan</th>
                                <th align="center" style="font-size: 12px;">Nomor SK</th>
                            </tr>
                            <!--<tr>
                                    <td><b>A. Kegiatan Pendidikan</b></td>
                            </tr>-->
                            <?php
                            $no = 0;
                            $jum1 = 0;
                            $jum2 = 0;
                            $jum3 = 0;
                            $jum4 = 0;
                            foreach ($data3 as $c)
                                :
                                ?>
                                <tr>
                                    <td align="center" style="font-size: 12px;"><?php echo ++$no; ?></td>
                                    <td align="center" style="font-size: 12px;"><?php echo $c['NAMA_DOSEN'] ?></td>
                                    <td align="center" style="font-size: 12px;"><?php echo $c['AK_UNSUR'] ?></td>
                                    <td align="center" style="font-size: 12px;"><?php echo $c['ANGKA_LAMA'] ?></td>
                                    <td align="center" style="font-size: 12px;"><?php echo $c['ANGKA_BARU'] ?></td>
                                    <td align="center" style="font-size: 12px;"><?php echo $c['ANGKA_DIGUNAKAN'] ?></td>
                                    <td align="center" style="font-size: 12px;"><?php echo $c['ANGKA_LEBIHAN'] ?></td>
                                    <td align="center" style="font-size: 12px;"><?php echo $c['NO_SK'] ?></td>
                                </tr>
                                <?php
                                $jum1+=$c['ANGKA_LAMA'];
                                $jum2+=$c['ANGKA_BARU'];
                                $jum3+=$c['ANGKA_DIGUNAKAN'];
                                $jum4+=$c['ANGKA_LEBIHAN'];
                                ?>
                                <?php
                            endforeach;
                            ?>
                            <tr>
                                <td colspan="3" align="right" style="font-size: 12px;"><b>Nilai Total :</b></td>
                                <td align="center" style="font-size: 12px;"><?php echo $jum1; ?></td>
                                <td align="center" style="font-size: 12px;"><?php echo $jum2; ?></td>
                                <td align="center" style="font-size: 12px;"><?php echo $jum3; ?></td>
                                <td align="center" style="font-size: 12px;"><?php echo $jum4; ?></td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapse_5">
                            Angka Kredit Tetap IV B </a>
                    </h4>
                </div>
                <div id="collapse_5" class="panel-collapse collapse">
                    <div class="panel-body">
                        <table border="1" width="100%" style="border-collapse: collapse;" >
                            <tr>
                                <th align="center" style="font-size: 12px;">No</th>
                                <th align="center" style="font-size: 12px;">Nama Dosen</th>
                                <th align="center" style="font-size: 12px;">Kegiatan</th>
                                <th align="center" style="font-size: 12px;">Angka Lama</th>
                                <th align="center" style="font-size: 12px;">Angka Baru</th>
                                <th align="center" style="font-size: 12px;">Angka Digunakan</th>
                                <th align="center" style="font-size: 12px;">Angka Lebihan</th>
                                <th align="center" style="font-size: 12px;">Nomor SK</th>
                            </tr>
                            <!--<tr>
                                    <td><b>A. Kegiatan Pendidikan</b></td>
                            </tr>-->
                            <?php
                            $no = 0;
                            $jum1 = 0;
                            $jum2 = 0;
                            $jum3 = 0;
                            $jum4 = 0;
                            foreach ($data4 as $u)
                                :
                                ?>
                                <tr>
                                    <td align="center" style="font-size: 12px;"><?php echo ++$no; ?></td>
                                    <td align="center" style="font-size: 12px;"><?php echo $u['NAMA_DOSEN'] ?></td>
                                    <td align="center" style="font-size: 12px;"><?php echo $u['AK_UNSUR'] ?></td>
                                    <td align="center" style="font-size: 12px;"><?php echo $u['ANGKA_LAMA'] ?></td>
                                    <td align="center" style="font-size: 12px;"><?php echo $u['ANGKA_BARU'] ?></td>
                                    <td align="center" style="font-size: 12px;"><?php echo $u['ANGKA_DIGUNAKAN'] ?></td>
                                    <td align="center" style="font-size: 12px;"><?php echo $u['ANGKA_LEBIHAN'] ?></td>
                                    <td align="center" style="font-size: 12px;"><?php echo $u['NO_SK'] ?></td>
                                </tr>
                                <?php
                                $jum1+=$u['ANGKA_LAMA'];
                                $jum2+=$u['ANGKA_BARU'];
                                $jum3+=$u['ANGKA_DIGUNAKAN'];
                                $jum4+=$u['ANGKA_LEBIHAN'];
                                ?>
                                <?php
                            endforeach;
                            ?>
                            <tr>
                                <td colspan="3" align="right" style="font-size: 12px;"><b>Nilai Total :</b></td>
                                <td align="center" style="font-size: 12px;"><?php echo $jum1; ?></td>
                                <td align="center" style="font-size: 12px;"><?php echo $jum2; ?></td>
                                <td align="center" style="font-size: 12px;"><?php echo $jum3; ?></td>
                                <td align="center" style="font-size: 12px;"><?php echo $jum4; ?></td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapse_6">
                            Angka Kredit Tetap IV C </a>
                    </h4>
                </div>
                <div id="collapse_6" class="panel-collapse collapse">
                    <div class="panel-body">
                        <table border="1" width="100%" style="border-collapse: collapse;" >
                            <tr>
                                <th align="center" style="font-size: 12px;">No</th>
                                <th align="center" style="font-size: 12px;">Nama Dosen</th>
                                <th align="center" style="font-size: 12px;">Kegiatan</th>
                                <th align="center" style="font-size: 12px;">Angka Lama</th>
                                <th align="center" style="font-size: 12px;">Angka Baru</th>
                                <th align="center" style="font-size: 12px;">Angka Digunakan</th>
                                <th align="center" style="font-size: 12px;">Angka Lebihan</th>
                                <th align="center" style="font-size: 12px;">Nomor SK</th>
                            </tr>
                            <!--<tr>
                                    <td><b>A. Kegiatan Pendidikan</b></td>
                            </tr>-->
                            <?php
                            $no = 0;
                            $jum1 = 0;
                            $jum2 = 0;
                            $jum3 = 0;
                            $jum4 = 0;
                            foreach ($data5 as $p)
                                :
                                ?>
                                <tr>
                                    <td align="center" style="font-size: 12px;"><?php echo ++$no; ?></td>
                                    <td align="center" style="font-size: 12px;"><?php echo $p['NAMA_DOSEN'] ?></td>
                                    <td align="center" style="font-size: 12px;"><?php echo $p['AK_UNSUR'] ?></td>
                                    <td align="center" style="font-size: 12px;"><?php echo $p['ANGKA_LAMA'] ?></td>
                                    <td align="center" style="font-size: 12px;"><?php echo $p['ANGKA_BARU'] ?></td>
                                    <td align="center" style="font-size: 12px;"><?php echo $p['ANGKA_DIGUNAKAN'] ?></td>
                                    <td align="center" style="font-size: 12px;"><?php echo $p['ANGKA_LEBIHAN'] ?></td>
                                    <td align="center" style="font-size: 12px;"><?php echo $p['NO_SK'] ?></td>
                                </tr>
                                <?php
                                $jum1+=$p['ANGKA_LAMA'];
                                $jum2+=$p['ANGKA_BARU'];
                                $jum3+=$p['ANGKA_DIGUNAKAN'];
                                $jum4+=$p['ANGKA_LEBIHAN'];
                                ?>
                                <?php
                            endforeach;
                            ?>
                            <tr>
                                <td colspan="3" align="right" style="font-size: 12px;"><b>Nilai Total :</b></td>
                                <td align="center" style="font-size: 12px;"><?php echo $jum1; ?></td>
                                <td align="center" style="font-size: 12px;"><?php echo $jum2; ?></td>
                                <td align="center" style="font-size: 12px;"><?php echo $jum3; ?></td>
                                <td align="center" style="font-size: 12px;"><?php echo $jum4; ?></td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapse_7">
                            Angka Kredit Tetap IV D </a>
                    </h4>
                </div>
                <div id="collapse_7" class="panel-collapse collapse">
                    <div class="panel-body">
                        <table border="1" width="100%" style="border-collapse: collapse;" >
                            <tr>
                                <th align="center" style="font-size: 12px;">No</th>
                                <th align="center" style="font-size: 12px;">Nama Dosen</th>
                                <th align="center" style="font-size: 12px;">Kegiatan</th>
                                <th align="center" style="font-size: 12px;">Angka Lama</th>
                                <th align="center" style="font-size: 12px;">Angka Baru</th>
                                <th align="center" style="font-size: 12px;">Angka Digunakan</th>
                                <th align="center" style="font-size: 12px;">Angka Lebihan</th>
                                <th align="center" style="font-size: 12px;">Nomor SK</th>
                            </tr>
                            <!--<tr>
                                    <td><b>A. Kegiatan Pendidikan</b></td>
                            </tr>-->
                            <?php
                            $no = 0;
                            $jum1 = 0;
                            $jum2 = 0;
                            $jum3 = 0;
                            $jum4 = 0;
                            foreach ($data6 as $q)
                                :
                                ?>
                                <tr>
                                    <td align="center" style="font-size: 12px;"><?php echo ++$no; ?></td>
                                    <td align="center" style="font-size: 12px;"><?php echo $q['NAMA_DOSEN'] ?></td>
                                    <td align="center" style="font-size: 12px;"><?php echo $q['AK_UNSUR'] ?></td>
                                    <td align="center" style="font-size: 12px;"><?php echo $q['ANGKA_LAMA'] ?></td>
                                    <td align="center" style="font-size: 12px;"><?php echo $q['ANGKA_BARU'] ?></td>
                                    <td align="center" style="font-size: 12px;"><?php echo $q['ANGKA_DIGUNAKAN'] ?></td>
                                    <td align="center" style="font-size: 12px;"><?php echo $q['ANGKA_LEBIHAN'] ?></td>
                                    <td align="center" style="font-size: 12px;"><?php echo $q['NO_SK'] ?></td>
                                </tr>
                                <?php
                                $jum1+=$q['ANGKA_LAMA'];
                                $jum2+=$q['ANGKA_BARU'];
                                $jum3+=$q['ANGKA_DIGUNAKAN'];
                                $jum4+=$q['ANGKA_LEBIHAN'];
                                ?>
                                <?php
                            endforeach;
                            ?>
                            <tr>
                                <td colspan="3" align="right" style="font-size: 12px;"><b>Nilai Total :</b></td>
                                <td align="center" style="font-size: 12px;"><?php echo $jum1; ?></td>
                                <td align="center" style="font-size: 12px;"><?php echo $jum2; ?></td>
                                <td align="center" style="font-size: 12px;"><?php echo $jum3; ?></td>
                                <td align="center" style="font-size: 12px;"><?php echo $jum4; ?></td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapse_8">
                            Angka Kredit Tetap IV E </a>
                    </h4>
                </div>
                <div id="collapse_8" class="panel-collapse collapse">
                    <div class="panel-body">
                        <table border="1" width="100%" style="border-collapse: collapse;" >
                            <tr>
                                <th align="center" style="font-size: 12px;">No</th>
                                <th align="center" style="font-size: 12px;">Nama Dosen</th>
                                <th align="center" style="font-size: 12px;">Kegiatan</th>
                                <th align="center" style="font-size: 12px;">Angka Lama</th>
                                <th align="center" style="font-size: 12px;">Angka Baru</th>
                                <th align="center" style="font-size: 12px;">Angka Digunakan</th>
                                <th align="center" style="font-size: 12px;">Angka Lebihan</th>
                                <th align="center" style="font-size: 12px;">Nomor SK</th>
                            </tr>
                            <!--<tr>
                                    <td><b>A. Kegiatan Pendidikan</b></td>
                            </tr>-->
                            <?php
                            $no = 0;
                            $jum1 = 0;
                            $jum2 = 0;
                            $jum3 = 0;
                            $jum4 = 0;
                            foreach ($data7 as $h)
                                :
                                ?>
                                <tr>
                                    <td align="center" style="font-size: 12px;"><?php echo ++$no; ?></td>
                                    <td align="center" style="font-size: 12px;"><?php echo $h['NAMA_DOSEN'] ?></td>
                                    <td align="center" style="font-size: 12px;"><?php echo $h['AK_UNSUR'] ?></td>
                                    <td align="center" style="font-size: 12px;"><?php echo $h['ANGKA_LAMA'] ?></td>
                                    <td align="center" style="font-size: 12px;"><?php echo $h['ANGKA_BARU'] ?></td>
                                    <td align="center" style="font-size: 12px;"><?php echo $h['ANGKA_DIGUNAKAN'] ?></td>
                                    <td align="center" style="font-size: 12px;"><?php echo $h['ANGKA_LEBIHAN'] ?></td>
                                    <td align="center" style="font-size: 12px;"><?php echo $h['NO_SK'] ?></td>
                                </tr>
                                <?php
                                $jum1+=$h['ANGKA_LAMA'];
                                $jum2+=$h['ANGKA_BARU'];
                                $jum3+=$h['ANGKA_DIGUNAKAN'];
                                $jum4+=$h['ANGKA_LEBIHAN'];
                                ?>
                                <?php
                            endforeach;
                            ?>
                            <tr>
                                <td colspan="3" align="right" style="font-size: 12px;"><b>Nilai Total :</b></td>
                                <td align="center" style="font-size: 12px;"><?php echo $jum1; ?></td>
                                <td align="center" style="font-size: 12px;"><?php echo $jum2; ?></td>
                                <td align="center" style="font-size: 12px;"><?php echo $jum3; ?></td>
                                <td align="center" style="font-size: 12px;"><?php echo $jum4; ?></td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>


        </div>
    </div>
</div>
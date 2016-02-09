<?php
foreach ($dos as $d)
    ;
$criteria = new CDbCriteria();
?>
<div class="portlet box blue">
    <div class="portlet-title">
        <div class="caption">
            <i class="fa fa-cogs"></i> Pengajuan Angka Kredit </div>
        <div class="actions">
            <?php //echo CHtml::link('<i class="fa fa-plus"></i> Tambah',array('create'),array('class'=>'btn btn-sm red'));  ?>    </div>  
        <div class="actions">
<?php //echo CHtml::link('<i class="fa fa-user"></i> Exsport Kontak Personal All', array('Exsportall'), array('class' => 'btn btn-sm green'));   ?>    </div>
    </div>

    <div class="portlet-body">
        <div class="table-responsive">
            <div class="module">
                <div class="module-body">
                    <div class="profile-head media">
                        <div class="alert alert-block alert-danger fade in">
                            <table>
                                <tr>
                                    <td>
                                        <div align="left" style="width:150px;font-size:20px;line-height: 25px;">Nip Dosen</div>
                                        <div align="left" style="width:150px;font-size:20px;line-height: 25px;">Nama Dosen</div>
                                        <div align="left" style="width:150px;font-size:20px;line-height: 25px;">Pengajuan Ke</div>
                                    </td>
                                    <td>
                                        <div align="left" style="width:5px;font-size: 20px;line-height: 25px;">: </div>
                                        <div align="left" style="width:5px;font-size: 20px;line-height: 25px;">: </div>
                                        <div align="left" style="width:5px;font-size: 20px;line-height: 25px;">: </div>    
                                    </td>
                                    <td>
                                        <div align="left" style="width:5px;font-size: 20px;line-height: 25px;"></div>
                                        <div align="left" style="width:5px;font-size: 20px;line-height: 25px;"></div>
                                        <div align="left" style="width:5px;font-size: 20px;line-height: 25px;"></div>    
                                    </td>
                                    <td>
                                        <div align="left" style="width:150px;font-size:20px;line-height: 25px;"> <?php echo $d['NIP_DOSEN'] ?></div>
                                        <div align="left" style="width:250px;font-size:20px;line-height: 25px;"> <?php echo $d['NAMA_DOSEN'] ?></div>
                                        <div align="left" style="width:150px;font-size:20px;line-height: 25px;"> <?php echo $ajukan; ?></div>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <ul class="profile-tab nav nav-tabs">
                        <li><a href="#1" data-toggle="tab">Unsur Pelaksanaan Pendidikan</a></li>
                        <li><a href="#2" data-toggle="tab">Unsur Pendidikan</a></li>
                        <li><a href="#3" data-toggle="tab">Unsur Penelitian</a></li>
                        <li><a href="#4" data-toggle="tab">Unsur Pengabdian</a></li>
                        <li><a href="#5" data-toggle="tab">Unsur Penunjang</a></li>
                        <li class="active"><a href="#6" data-toggle="tab">Jumlah Angka</a></li>
                    </ul>
                    
                    <!---- tab 1---->
                    
                    <div class="profile-tab-content tab-content">
                        <div class="tab-pane fade" id="1">
                            <div class="module-body">
                                <table class="table table-bordered table-striped table-condensed flip-content">
                                    <thead class="flip-content">
                                        <tr>
                                            <th>No</th>
                                            <th>Sub Unsur Pelaksanaan Pendidikan</th>
                                            <th>Nilai</th>
                                            <th>Detail</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        $no = 0;
                                        $jumlah_angkapel = 0;
                                        foreach ($data as $x)
                                            :
                                            ?>
                                            <tr>
                                                <td><?php echo ++$no; ?></td>
                                                <td><?php echo $x['SUBPELPEND'] ?></td>
                                                <td><?php echo $x['nilai'] ?></td>
                                                <td><?php echo CHtml::link('Detail', array('unsurPelPendidikan/detail&id=' . $d['ID_DOSEN'] . '&subpelpend=' . $x['ID_SUBPELPEND'] . '&pengajuan=' . $ajukan), array('class' => 'btn default')); ?></td>
                                            </tr>
                                            <?php
                                            $jumlah_angkapel+=$x['nilai'];
                                            ?>
                                            <?php
                                        endforeach;
                                        ?>
                                        <tr>
                                            <td colspan="2" align="right"><b>Jumlah Angka :</b></td>
                                            <td><?php echo $jumlah_angkapel; ?></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <!--modal-->
                        <!--<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
                                    </div>
                                    <div class="modal-body">
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                        <button type="button" class="simpan btn btn-primary">Save changes</button>
                                    </div>
                                </div>
                            </div>
                        </div>-->
                        <!--akhir modal-->
                        <div class="tab-pane fade" id="2">
                            <div class="module-body">
                                <table class="table table-bordered table-striped table-condensed flip-content">
                                    <thead class="flip-content">
                                        <tr>
                                            <th align="center">No</th>
                                            <th align="center">Sub Unsur Kegiatan Pendidikan dan Pengajaran</th>
                                            <th align="center">Jumlah Angka Kredit</th>
                                            <th align="center">Detail</th>
                                        </tr>
                                    </thead>
                                    <?php
                                    $no = 0;
                                    $jumlah_angkapend = 0;
                                    foreach ($data2 as $s)
                                        :
                                        ?>
                                        <tbody>
                                            <tr>
                                                <td align="center"><?php echo ++$no; ?></td>
                                                <td align="center"><?php echo $s['SUBUNPEND'] ?></td>
                                                <td align="center"><?php echo $s['nilai'] ?></td>
                                                <td><?php echo CHtml::link('Detail', array('unsurPendidikan/detail&id=' . $d['ID_DOSEN'] . '&subpend=' . $s['ID_SUBUNPEND'] . '&pengajuan=' . $ajukan), array('class' => 'btn default')); ?></td>
                                            </tr>
                                            <?php
                                            $jumlah_angkapend+=$s['nilai'];
                                            ?>
                                            <?php
                                        endforeach;
                                        ?>
                                        <tr>
                                            <td colspan="2" align="right"><b>Jumlah Angka :</b></td>
                                            <td align="center"><?php echo $jumlah_angkapend; ?></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="3">
                            <div class="module-body">
                                <table class="table table-bordered table-striped table-condensed flip-content">
                                    <thead class="flip-content">
                                        <tr>
                                            <th>No</th>
                                            <th>Sub Unsur Penelitian</th>
                                            <th>Nilai Angka Kredit</th>
                                            <th>Nilai Peer Review</th>
                                            <th>Detail</th>
                                        </tr>
                                    </thead>
                                    <?php
                                    $no = 0;
                                    $jumlah_angkapen = 0;
                                    $jumlah_peer = 0;
                                    foreach ($data3 as $a)
                                        :
                                        ?>
                                        <tbody>
                                            <tr>
                                                <td><?php echo ++$no; ?></td>
                                                <td><?php echo $a['SUBUNPENELITIAN'] ?></td>
                                                <td><?php echo $a['nilai'] ?></td>
                                                <td><?php echo $a['nilai_peer'] ?></td>
                                                <td><?php echo CHtml::link('Detail', array('unsurPenelitian/detail&id=' . $d['ID_DOSEN'] . '&subpenelitian=' . $a['ID_SUBUNPENELITIAN'] . '&pengajuan=' . $ajukan), array('class' => 'btn default')); ?></td>
                                            </tr>
                                            <?php
                                            $jumlah_angkapen+=$a['nilai'];
                                            $jumlah_peer+=$a['nilai_peer'];
                                            ?>
                                            <?php
                                        endforeach;
                                        ?>
                                        <tr>
                                            <td colspan="2" align="right"><b>Jumlah Angka :</b></td>
                                            <td><?php echo $jumlah_angkapen; ?></td>
                                            <td><?php echo $jumlah_peer; ?></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="4">
                            <div class="module-body">
                                <table class="table table-bordered table-striped table-condensed flip-content">
                                    <thead class="flip-content">
                                        <tr>
                                            <th align="center">No</th>
                                            <th align="center">Sub Unsur Pengabdian</th>
                                            <th align="center">Jumlah Angka Kredit</th>
                                            <th align="center">Detail</th>
                                        </tr>
                                    </thead>
                                    <?php
                                    $no = 0;
                                    $jumlah_angkapeng = 0;
                                    foreach ($data4 as $b)
                                        :
                                        ?>
                                        <tbody>
                                            <tr>
                                                <td align="center"><?php echo ++$no; ?></td>
                                                <td align="center"><?php echo $b['SUBUNPENGAB'] ?></td>
                                                <td align="center"><?php echo $b['nilai'] ?></td>
                                                <td><?php echo CHtml::link('Detail', array('unsurPengabdian/detail&id=' . $d['ID_DOSEN'] . '&subunpengab=' . $b['ID_SUBUNPENGAB'] . '&pengajuan=' . $ajukan), array('class' => 'btn default')); ?></td>
                                            </tr>
                                            <?php
                                            $jumlah_angkapeng+=$b['nilai'];
                                            ?>
                                            <?php
                                        endforeach;
                                        ?>
                                        <tr>
                                            <td colspan="2" align="right"><b>Jumlah Angka :</b></td>
                                            <td align="center"><?php echo $jumlah_angkapeng; ?></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="5">
                            <div class="module-body">
                                <table class="table table-bordered table-striped table-condensed flip-content">
                                    <thead class="flip-content">
                                        <tr>
                                            <th align="center">No</th>
                                            <th align="center">Sub Unsur Penunjang</th>
                                            <th align="center">Jumlah Angka Kredit</th>
                                            <th align="center">Detail</th>
                                        </tr>
                                    </thead>
                                    <?php
                                    $no = 0;
                                    $jumlah_angkapenun = 0;
                                    foreach ($data5 as $c)
                                        :
                                        ?>
                                        <tbody>
                                            <tr>
                                                <td align="center"><?php echo ++$no; ?></td>
                                                <td align="center"><?php echo $c['SUBUNPENUNJANG'] ?></td>
                                                <td align="center"><?php echo $c['nilai'] ?></td>
                                                <td><?php echo CHtml::link('Detail', array('unsurPenunjang/detail&id=' . $d['ID_DOSEN'] . '&subunpenunjang=' . $c['ID_SUBUNPENUNJANG'] . '&pengajuan=' . $ajukan), array('class' => 'btn default')); ?></td>
                                            </tr>
                                            <?php
                                            $jumlah_angkapenun+=$c['nilai'];
                                            ?>
                                            <?php
                                        endforeach;
                                        ?>
                                        <tr>
                                            <td colspan="2" align="right""><b>Jumlah Angka :</b></td>
                                            <td align="center"><?php echo $jumlah_angkapenun; ?></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        
                        <div class="tab-pane fade active in" id="6">
                            <div class="module-body">
                                <table class="table table-bordered table-striped table-condensed flip-content">
                                    <thead class="flip-content">
                                        <tr>
                                            <th align="center">No</th>
                                            <th align="center">Bidang</th>
                                            <th align="center">Nilai Yang Dibutuhkan</th>
                                            <th align="center">Nilai Saat Ini</th>
                                            <th align="center">Keterangan</th>
                                        </tr>
                                    </thead>
                                    <?php
                                    $query = "select * from tbl_pengajuan where PENGAJUAN='$ajukan'";
                                    $per = Yii::app()->db->createCommand($query)->queryAll();
                                    foreach ($per as $per):
                                        ?>
                                        <tbody>
                                            <tr>
                                                <td align="center">1</td>
                                                <td align="left">Pelaksanaan Pendidikan dan Pengajaran</td>
                                                <td align="center">
                                                    <?php 
                                                    $btpp=$per['ANGKA_SELISIH']*$per['PERSENTASE_BID1'];
                                                    echo $btpp; ?>
                                                </td>
                                                <td align="center">
                                                    <?php
                                                    $totpelpend=$jumlah_angkapel+$jumlah_angkapend;
                                                    echo $totpelpend;
                                                    ?>
                                                </td>
                                                <td align="center">
                                                    <?php
                                                        if($totpelpend>$btpp){
                                                            echo '<span class="label label-sm label-info">Nilai Anda Sudah Memenuhi</span>';
                                                        }
                                                        else{
                                                            $kurpnd=$btpp-$totpelpend;
                                                            echo '<span class="label label-sm label-danger">Nilai Anda Kurang :'.$kurpnd.'</span>';
                                                        }
                                                    ?>
                                                </td>
                                            </tr>
                                            
                                            <tr>
                                                <td align="center">2</td>
                                                <td align="left">Pelaksanaan Penelitian</td>
                                                <td align="center">
                                                    <?php 
                                                    $btpbid2=$per['ANGKA_SELISIH']*$per['PERSENTASE_BID2'];
                                                    echo $btpbid2; ?>
                                                </td>
                                                <td align="center">
                                                    <?php
                                                    echo $jumlah_angkapen;
                                                    ?>
                                                </td>
                                                <td align="center">
                                                    <?php
                                                        if($jumlah_angkapen>$btpbid2){
                                                            echo '<span class="label label-sm label-info">Nilai Anda Sudah Memenuhi</span>';
                                                        }
                                                        else{
                                                            $kurpen=$btpbid2-$jumlah_angkapen;
                                                            echo '<span class="label label-sm label-danger">Nilai Anda Kurang :'.$kurpen.'</span>';
                                                        }
                                                    ?>
                                                </td>
                                            </tr>
                                            
                                            <tr>
                                                <td align="center">3</td>
                                                <td align="left">Pelaksanaan Pengabdian Pada Masyarakat</td>
                                                <td align="center">
                                                    <?php 
                                                    $btpbid3=$per['ANGKA_SELISIH']*$per['PERSENTASE_BID3'];
                                                    echo $btpbid3; ?>
                                                </td>
                                                <td align="center">
                                                    <?php
                                                    echo $jumlah_angkapeng;
                                                    ?>
                                                </td>
                                                <td align="center">
                                                    <?php
                                                        if($jumlah_angkapeng>$btpbid3){
                                                            echo '<span class="label label-sm label-info">Nilai Anda Sudah Memenuhi</span>';
                                                        }
                                                        else{
                                                            $kurpeng=$btpbid3-$jumlah_angkapeng;
                                                            echo '<span class="label label-sm label-danger">Nilai Anda Kurang :'.$kurpeng.'</span>';
                                                        }
                                                    ?>
                                                </td>
                                            </tr>
                                            
                                            <tr>
                                                <td align="center">4</td>
                                                <td align="left">Pelaksanaan Penunjang Kegiatan Akademik</td>
                                                <td align="center">
                                                    <?php 
                                                    $btpbid4=$per['ANGKA_SELISIH']*$per['PERSENTASE_BID4'];
                                                    echo $btpbid4; ?>
                                                </td>
                                                <td align="center">
                                                    <?php
                                                    echo $jumlah_angkapenun;
                                                    ?>
                                                </td>
                                                <td align="center">
                                                    <?php
                                                        if($jumlah_angkapenun>$btpbid4){
                                                            echo '<span class="label label-sm label-info">Nilai Anda Sudah Memenuhi</span>';
                                                        }
                                                        else{
                                                            $kurpenun=$btpbid4-$jumlah_angkapenun;
                                                            
                                                            echo '<span class="label label-sm label-danger">Nilai Anda Kurang :'.$kurpenun.'</span>';
                                                        }
                                                    ?>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" align="right">Jumlah</td>
                                                <td align="center">
                                                    <?php 
                                                        $totbut=$btpp+$btpbid2+$btpbid3+$btpbid4;
                                                        echo $totbut;
                                                    ?>
                                                </td>
                                                <td align="center">
                                                    <?php
                                                        $tothas=$totpelpend+$jumlah_angkapen+$jumlah_angkapeng+$jumlah_angkapenun;
                                                        echo $tothas;
                                                    ?>
                                                </td>
                                                <td align="center"></td>
                                            </tr>
                                        </tbody>
                                        <?php
                                    endforeach;
                                    ?>
                                </table>                    
                            </div>
                        </div>
                    </div>
                </div>
                <!--/.module-body-->
            </div>
        </div>
    </div>
</div>  
<script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="scripts/datatables/jquery.dataTables.js" type="text/javascript"></script>
<script>
    $(function () {
        $(document).on('click', '.edit-record', function (e) {
            e.preventDefault();
            $("#myModal").modal('show');
            $.post('subunPenelitan/modals',
                    {id: $(this).attr('data-id'), subun: $(this).attr('data-subun')},
            function (html) {
                $(".modal-body").html(html);
            }
            );
        });
    });
</script>
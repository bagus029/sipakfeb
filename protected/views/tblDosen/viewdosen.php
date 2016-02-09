<div class="note note-success">
    <h3>Pengajuan Angka Kredit</h3>
    <?php
    $this->widget('zii.widgets.CDetailView', array(
        'data' => $model,
        'attributes' => array(
            'ID_DOSEN',
            'NIP_DOSEN',
            'NAMA_DOSEN',
            'NIDN',
            'iDJURUSAN.NAMA_JURUSAN',
            'PENDIDIKAN_TERTINGGI',
            'FOTO',
        ),
    ));
    ?>
        <?php echo CHtml::beginForm(); ?>
    <div class="form-group">
        <?php echo CHtml::label('Pengajuan Angka Kredit Ke :', ''); ?>
        <?php //echo CHtml::textField('pengajuan'); ?>
        <?php
        echo CHtml::dropDownList('pengajuan', 'pengajuan', array('III B' => 'III B',
            'III C' => 'III C',
            'III D' => 'III D',
            'IV A' => 'IV A',
            'IV B' => 'IV B',
            'IV C' => 'IV C',
            'IV D' => 'IV D',
            'IV E' => 'IV E',
            'ASISTEN AHLI' => 'ASISTEN AHLI',
            'LEKTOR' => 'LEKTOR',
            'LEKTOR KEPALA' => 'LEKTOR KEPALA',
            'PROFESOR' => 'PROFESOR',), array('empty' => '==Pilih Pengajuan=='));
        ?>

        <span><?php echo CHtml::submitButton('Proses', array('class' => 'btn btn-primary')); ?></span>
    <?php $aj = Yii::app()->request->getParam('pengajuan', 0); ?>
        <span><?php echo CHtml::link('<i class=""></i>Cetak Dupak', array('/cetak/dupak&id_dosen=' . $model->ID_DOSEN . '&pengajuan=' . $aj), array('class' => 'btn btn-warning btn-md')); ?></span>
    </div>
<?php echo CHtml::endForm(); ?>
</div>

<div class="portlet box blue tabbable">
    <div class="portlet-title">
        <div class="caption">
            <i class="fa fa-gift"></i>Pengajuan Angka Kredit
        </div>
    </div>
    <div class="portlet-body">
        <div class="tabbable portlet-tabs">
            <ul class="nav nav-tabs">
                <li>
                    <a href="#portlet_tab6" data-toggle="tab">
                        Unsur Penunjang</a>
                </li>
                <li>
                    <a href="#portlet_tab5" data-toggle="tab">
                        Unsur Pengabdian</a>
                </li>
                <li>
                    <a href="#portlet_tab4" data-toggle="tab">
                        Unsur Penelitian</a>
                </li>
                <li>
                    <a href="#portlet_tab3" data-toggle="tab">
                        Unsur Pel Pendidikan</a>
                </li>
                <li class="active">
                    <a href="#portlet_tab2" data-toggle="tab">
                        Unsur Pendidikan</a>
                </li>

            </ul>
            <div class="tab-content">
                <div class="tab-pane active" id="portlet_tab2">
                    <?php $aj = Yii::app()->request->getParam('pengajuan', 0); ?>
                    <?php echo CHtml::link('<i class="icon-plus"></i> AK Pendidikan', array('/unsurPendidikan/create&id_dosen=' . $model->ID_DOSEN . '&pengajuan=' . $aj), array('class' => 'btn btn-success btn-md')); ?>
                    <?php echo CHtml::link('<i class=""></i> Cetak AK', array('/cetak/pendidikan&id_dosen=' . $model->ID_DOSEN . '&pengajuan=' . $aj), array('class' => 'btn btn-warning btn-md')); ?>
                    <?php
                    $this->widget('ext.GroupGridView', array(
                        'itemsCssClass' => 'table table-striped table-bordered dataTable',
                        'id' => 'unsur-pendidikan-grid',
                        'dataProvider' => $viewangkapend,
                        //'filter'=>$model,
                        'columns' => array(
                            array('name' => 'ID_SUBUNPEND',
                                'type' => 'raw',
                                'header' => 'Sub Unsur Pendidikan',
                                'value' => 'CHtml::encode($data->iDSUBUNPEND->SUBUNPEND)',
                                'htmlOptions' => array('width' => '25%'),
                            ),
                            array('name' => 'PENGAJUAN_KE',
                                'type' => 'raw',
                                'header' => 'Pengajuan Ke',
                                'value' => 'CHtml::encode($data->PENGAJUAN_KE)',
                                'htmlOptions' => array('width' => '5%'),
                            ),
                            array('name' => 'KEGIATAN_PENDIDIKAN',
                                'type' => 'raw',
                                'header' => 'Kegiatan',
                                'value' => 'CHtml::encode($data->KEGIATAN_PENDIDIKAN)',
                                'htmlOptions' => array('width' => '20%'),
                            ),
                            array('name' => 'TEMPAT_PENDIDIKAN',
                                'type' => 'raw',
                                'header' => 'Tempat Kegiatan',
                                'value' => 'CHtml::encode($data->TEMPAT_PENDIDIKAN)',
                                'htmlOptions' => array('width' => '20%'),
                            ),
                            array('name' => 'TGL_KEGIATAN_PEND',
                                'type' => 'raw',
                                'header' => 'Tgl Kegiatan',
                                'footer' => '<b> Total :</b>',
                                'value' => 'CHtml::encode($data->TGL_KEGIATAN_PEND)',
                                'htmlOptions' => array('width' => '15%'),
                            ),
                            array('class' => 'ext.TotalColumn',
                                'name' => 'NILAI_PENDIDIKAN',
                                'filter' => '',
                                'htmlOptions' => array('style' => 'text-align:right;width:120px'),
                                'output' => 'Yii::app()->numberFormatter->formatCurrency($value,"")',
                                'type' => 'raw',
                                'header' => 'Nilai',
                                'footer' => true,
                                'value' => 'CHtml::encode($data->NILAI_PENDIDIKAN)',
                                'footerHtmlOptions' => array(
                                    'style' => 'text-align: right; padding-right: 5px;'
                                ),
                            ),
                            array(
                                'class' => 'CButtonColumn',
                                'template' => '{view}{delete}{update}',
                                'buttons' => array(
                                    'view' => array(
                                        'label' => 'view',
                                        'url' => 'Yii::app()->createUrl("/unsurPendidikan/view", array("id" => $data->ID_UNSUR_PEND))',
                                    ),
                                    'delete' => array(
                                        'label' => 'delete',
                                        'url' => 'Yii::app()->createUrl("/unsurPendidikan/delete", array("id" => $data->ID_UNSUR_PEND))',
                                    ),
                                    'update' => array(
                                        'label' => 'update',
                                        'url' => 'Yii::app()->createUrl("/unsurPendidikan/update", array("id"=>$data->ID_UNSUR_PEND))'
                                    ),
                                ),
                            ),
                        ),
                    ));
                    ?>
                </div>
                <div class="tab-pane" id="portlet_tab3">
                    <?php echo CHtml::link('<i class="icon-plus"></i> AK Pelaksanaan Pendidikan', array('/unsurPelPendidikan/create&id_dosen=' . $model->ID_DOSEN . '&pengajuan=' . $aj), array('class' => 'btn btn-success btn-md', 'target' => '_blank')); ?>
                    <?php echo CHtml::link('<i class=""></i>Cetak AK', array('/cetak/pelpend&id_dosen=' . $model->ID_DOSEN . '&pengajuan=' . $aj), array('class' => 'btn btn-warning btn-md', 'target' => '_blank')); ?>
                    <?php
                    $this->widget('zii.widgets.grid.CGridView', array(
                        'itemsCssClass' => 'table table-striped table-bordered dataTable',
                        'id' => 'unsur-pel-pendidikan-grid',
                        'dataProvider' => $viewangkapelpend,
                        'enablePagination' => false,
                        'columns' => array(
                            array('name' => 'ID_SUBPELPEND',
                                'type' => 'raw',
                                'header' => 'Sub Pelaksanaan Pendidikan',
                                'value' => 'CHtml::encode($data->iDSUBPELPEND->SUBPELPEND)',
                                'htmlOptions' => array('width' => '25%'),
                            ),
                            array('name' => 'PENGAJUAN_KE',
                                'type' => 'raw',
                                'header' => 'Pengajuan Ke',
                                'value' => 'CHtml::encode($data->PENGAJUAN_KE)',
                                'htmlOptions' => array('width' => '10%'),
                            ),
                            array('name' => 'KEGIATAN_PELPEND',
                                'type' => 'raw',
                                'header' => 'Kegiatan',
                                'value' => 'CHtml::encode($data->KEGIATAN_PELPEND)',
                                'htmlOptions' => array('width' => '25%'),
                            ),
                            array('name' => 'TEMPAT_PELPEND',
                                'type' => 'raw',
                                'header' => 'Tempat Pelaksanaan',
                                'value' => 'CHtml::encode($data->TEMPAT_PELPEND)',
                                'htmlOptions' => array('width' => '20%'),
                            ),
                            array('name' => 'SEMESTER',
                                'type' => 'raw',
                                'header' => 'Semester',
                                'value' => 'CHtml::encode($data->SEMESTER)',
                                'htmlOptions' => array('width' => '10%'),
                            ),
                            array('class' => 'ext.TotalColumn',
                                'name' => 'NILAI_PELPEND',
                                'filter' => '',
                                'htmlOptions' => array('style' => 'text-align:right;width:100px'),
                                'output' => 'Yii::app()->numberFormatter->formatCurrency($value,"")',
                                'type' => 'raw',
                                'header' => 'Nilai',
                                'footer' => true,
                                'value' => 'CHtml::encode($data->NILAI_PELPEND)',
                                'footerHtmlOptions' => array(
                                    'style' => 'text-align: right; padding-right: 5px;'
                                ),
                            ),
                            array(
                                'class' => 'CButtonColumn',
                                'template' => '{view}{delete}{update}',
                                'buttons' => array(
                                    'view' => array(
                                        'label' => 'view',
                                        'url' => 'Yii::app()->createUrl("/unsurPelPendidikan/view", array("id" => $data->ID_UNSUR_PELPEND))',
                                    ),
                                    'delete' => array(
                                        'label' => 'delete',
                                        'url' => 'Yii::app()->createUrl("/unsurPelPendidikan/delete", array("id" => $data->ID_UNSUR_PELPEND))',
                                    ),
                                    'update' => array(
                                        'label' => 'update',
                                        'url' => 'Yii::app()->createUrl("/unsurPelPendidikan/update", array("id"=>$data->ID_UNSUR_PELPEND))'
                                    ),
                                ),
                            ),
                        ),
                    ));
                    ?>
                </div>
                <div class="tab-pane" id="portlet_tab4">
                    <?php echo CHtml::link('<i class="icon-plus"></i> AK Penelitian', array('/unsurPenelitian/create&id_dosen=' . $model->ID_DOSEN . '&pengajuan=' . $aj), array('class' => 'btn btn-success btn-md', 'target' => '_blank')); ?>
                    <?php echo CHtml::link('<i class=""></i>Cetak AK', array('/cetak/penelitian&id_dosen=' . $model->ID_DOSEN . '&pengajuan=' . $aj), array('class' => 'btn btn-warning btn-md', 'target' => '_blank')); ?>
                    <?php
                    $this->widget('zii.widgets.grid.CGridView', array(
                        'itemsCssClass' => 'table table-striped table-bordered dataTable',
                        'id' => 'unsur-penelitian-grid',
                        'dataProvider' => $viewangkapenelitian,
                        //'filter'=>$model,
                        'columns' => array(
                            array('name' => 'ID_SUBUNPENELITIAN',
                                'type' => 'raw',
                                'header' => 'Sub Unsur Penelitian',
                                'value' => 'CHtml::encode($data->iDSUBUNPENELITIAN->SUBUNPENELITIAN)',
                                'htmlOptions' => array('width' => '20%'),
                            ),
                            array('name' => 'PENGAJUAN_KE',
                                'type' => 'raw',
                                'header' => 'Pengajuan Ke',
                                'value' => 'CHtml::encode($data->PENGAJUAN_KE)',
                                'htmlOptions' => array('width' => '15%'),
                            ),
                            array('name' => 'KEGIATAN_PENELITIAN',
                                'type' => 'raw',
                                'header' => 'Kegiatan',
                                'value' => 'CHtml::encode($data->KEGIATAN_PENELITIAN)',
                                'htmlOptions' => array('width' => '25%'),
                            ),
                            array('name' => 'TEMPAT_PENELITIAN',
                                'type' => 'raw',
                                'header' => 'Tempat Kegiatan',
                                'value' => 'CHtml::encode($data->TEMPAT_PENELITIAN)',
                                'htmlOptions' => array('width' => '25%'),
                            ),
                            array('name' => 'TGL_PENELITIAN',
                                'type' => 'raw',
                                'header' => 'Tanggal Kegiatan',
                                'value' => 'CHtml::encode($data->TGL_PENELITIAN)',
                                'htmlOptions' => array('width' => '5%'),
                            ),
                            array('class' => 'ext.TotalColumn',
                                'name' => 'NILAI_PENELITIAN',
                                'filter' => '',
                                'htmlOptions' => array('style' => 'text-align:center;width:120px',),
                                'output' => 'Yii::app()->numberFormatter->formatCurrency($value,"")',
                                'type' => 'raw',
                                'header' => 'Nilai',
                                'footer' => true,
                                'value' => 'CHtml::encode($data->NILAI_PENELITIAN)',
                                'footerHtmlOptions' => array(
                                    'style' => 'text-align: right; padding-right: 5px;'
                                ),
                            ),
                            array('class' => 'ext.TotalColumn',
                                'name' => 'NILAI_PEER_REVIEW',
                                'filter' => '',
                                'htmlOptions' => array('style' => 'text-align:center;width:120px'),
                                'output' => 'Yii::app()->numberFormatter->formatCurrency($value,"")',
                                'type' => 'raw',
                                'header' => 'Peer Review',
                                'footer' => true,
                                'value' => 'CHtml::encode($data->NILAI_PEER_REVIEW)',
                                'footerHtmlOptions' => array(
                                    'style' => 'text.align:right; padding-right: 5px;'
                                )
                            ),
                            array(
                                'class' => 'CButtonColumn',
                                'template' => '{view}{delete}{update}',
                                'buttons' => array(
                                    'view' => array(
                                        'label' => 'view',
                                        'url' => 'Yii::app()->createUrl("/unsurPenelitian/view", array("id" => $data->ID_UNSUR_PENELITIAN))',
                                    ),
                                    'delete' => array(
                                        'label' => 'delete',
                                        'url' => 'Yii::app()->createUrl("/unsurPenelitian/delete", array("id" => $data->ID_UNSUR_PENELITIAN))',
                                    ),
                                    'update' => array(
                                        'label' => 'update',
                                        'url' => 'Yii::app()->createUrl("/unsurPenelitian/update", array("id"=>$data->ID_UNSUR_PENELITIAN))'
                                    ),
                                ),
                            ),
                        ),
                    ));
                    ?>
                </div>
                <div class="tab-pane" id="portlet_tab5">
                    <?php echo CHtml::link('<i class="icon-plus"></i> AK Pengabdian', array('/unsurPengabdian/create&id_dosen=' . $model->ID_DOSEN . '&pengajuan=' . $aj), array('class' => 'btn btn-success btn-md', 'target' => '_blank')); ?>
                    <?php echo CHtml::link('<i class=""></i>Cetak AK', array('/cetak/pengabdian&id_dosen=' . $model->ID_DOSEN . '&pengajuan=' . $aj), array('class' => 'btn btn-warning btn-md', 'target' => '_blank')); ?>
                    <?php
                    $this->widget('zii.widgets.grid.CGridView', array(
                        'itemsCssClass' => 'table table-striped table-bordered dataTable',
                        'id' => 'unsur-pengabdian-grid',
                        'dataProvider' => $viewangkapengabdian,
                        //'filter'=>$model,
                        'columns' => array(
                            array('name' => 'ID_SUBUNPENGAB',
                                'type' => 'raw',
                                'header' => 'Sub Unsur Pengabdian',
                                'value' => 'CHtml::encode($data->iDSUBUNPENGAB->SUBUNPENGAB)',
                                'htmlOptions' => array('width' => '20%'),
                            ),
                            array('name' => 'PENGAJUAN_KE',
                                'type' => 'raw',
                                'header' => 'Pengajuan Ke',
                                'value' => 'CHtml::encode($data->PENGAJUAN_KE)',
                                'htmlOptions' => array('width' => '15%'),
                            ),
                            array('name' => 'KEGIATAN_PENGABDIAN',
                                'type' => 'raw',
                                'header' => 'Kegiatan',
                                'value' => 'CHtml::encode($data->KEGIATAN_PENGABDIAN)',
                                'htmlOptions' => array('width' => '20%'),
                            ),
                            array('name' => 'TEMPAT_PENGABDIAN',
                                'type' => 'raw',
                                'header' => 'Tempat Pengabdian',
                                'value' => 'CHtml::encode($data->TEMPAT_PENGABDIAN)',
                                'htmlOptions' => array('width' => '20%'),
                            ),
                            array('name' => 'TGL_PENGABDIAN',
                                'type' => 'raw',
                                'header' => 'Tanggal',
                                'value' => 'CHtml::encode($data->TGL_PENGABDIAN)',
                                'htmlOptions' => array('width' => '15%'),
                            ),
                            array('class' => 'ext.TotalColumn',
                                'name' => 'NILAI_PENGABDIAN',
                                'filter' => '',
                                'htmlOptions' => array('style' => 'text-align:center;width:120px'),
                                'output' => 'Yii::app()->numberFormatter->formatCurrency($value,"")',
                                'type' => 'raw',
                                'header' => 'Nilai',
                                'footer' => true,
                                'value' => 'CHtml::encode($data->NILAI_PENGABDIAN)',
                                'footerHtmlOptions' => array(
                                    'style' => 'text-align: center; padding-right: 5px;'
                                ),
                            ),
                            array(
                                'class' => 'CButtonColumn',
                                'template' => '{view}{delete}{update}',
                                'buttons' => array(
                                    'view' => array(
                                        'label' => 'view',
                                        'url' => 'Yii::app()->createUrl("/unsurPengabdian/view", array("id" => $data->ID_UNSUR_PENGABDIAN))',
                                    ),
                                    'delete' => array(
                                        'label' => 'delete',
                                        'url' => 'Yii::app()->createUrl("/unsurPengabdian/delete", array("id" => $data->ID_UNSUR_PENGABDIAN))',
                                    ),
                                    'update' => array(
                                        'label' => 'update',
                                        'url' => 'Yii::app()->createUrl("/unsurPengabdian/update", array("id"=>$data->ID_UNSUR_PENGABDIAN))'
                                    ),
                                ),
                            ),
                        ),
                    ));
                    ?>
                </div>
                <div class="tab-pane" id="portlet_tab6">
                    <?php echo CHtml::link('<i class="icon-plus"></i> AK Penunjang', array('/unsurPenunjang/create&id_dosen=' . $model->ID_DOSEN . '&pengajuan=' . $aj), array('class' => 'btn btn-success btn-md', 'target' => '_blank')); ?>
                    <?php echo CHtml::link('<i class=""></i>Cetak AK', array('/cetak/penunjang&id_dosen=' . $model->ID_DOSEN . '&pengajuan=' . $aj), array('class' => 'btn btn-warning btn-md', 'target' => '_blank')); ?>
                    <?php
                    $this->widget('zii.widgets.grid.CGridView', array(
                        'itemsCssClass' => 'table table-striped table-bordered dataTable',
                        'id' => 'unsur-penunjang-grid',
                        'dataProvider' => $viewangkapenunjang,
                        //'filter'=>$viewangkapenunjang,
                        'columns' => array(
                            array('name' => 'ID_SUBUNPENUNJANG',
                                'type' => 'raw',
                                'header' => 'Sub Unsur Penunjang',
                                'value' => 'CHtml::encode($data->iDSUBUNPENUNJANG->SUBUNPENUNJANG)',
                                'htmlOptions' => array('width' => '20%'),
                            ),
                            array('name' => 'PENGAJUAN_KE',
                                'type' => 'raw',
                                'header' => 'Pengajuan Ke',
                                'value' => 'CHtml::encode($data->PENGAJUAN_KE)',
                                'htmlOptions' => array('width' => '10%'),
                            ),
                            array('name' => 'KEGIATAN_PENUNJANG',
                                'type' => 'raw',
                                'header' => 'Kegiatan',
                                'value' => 'CHtml::encode($data->KEGIATAN_PENUNJANG)',
                                'htmlOptions' => array('width' => '15%'),
                            ),
                            array('name' => 'TEMPAT_PENUNJANG',
                                'type' => 'raw',
                                'header' => 'Tempat',
                                'value' => 'CHtml::encode($data->TEMPAT_PENUNJANG)',
                                'htmlOptions' => array('width' => '20%'),
                            ),
                            array('name' => 'KEDUDUKAN_SEBAGAI',
                                'type' => 'raw',
                                'header' => 'Kedudukan',
                                'value' => 'CHtml::encode($data->KEDUDUKAN_SEBAGAI)',
                                'htmlOptions' => array('width' => '10%')),
                            array('name' => 'TGL_KEG_PENUNJANG',
                                'type' => 'raw',
                                'header' => 'Tanggal Kegiatan',
                                'value' => 'CHtml::encode($data->TGL_KEG_PENUNJANG)',
                                'htmlOptions' => array('width' => '15%'),
                            ),
                            array('class' => 'ext.TotalColumn',
                                'name' => 'NILAI_PENUNJANG',
                                'filter' => '',
                                'htmlOptions' => array('style' => 'text-align:center;width:120px'),
                                'output' => 'Yii::app()->numberFormatter->formatCurrency($value,"")',
                                'type' => 'raw',
                                'header' => 'Nilai',
                                'footer' => true,
                                'value' => 'CHtml::encode($data->NILAI_PENUNJANG)',
                                'footerHtmlOptions' => array(
                                    'style' => 'text-align: center; padding-right: 5px;'
                                ),
                            ),
                            array(
                                'class' => 'CButtonColumn',
                                'template' => '{view}{delete}{update}',
                                'buttons' => array(
                                    'view' => array(
                                        'label' => 'view',
                                        'url' => 'Yii::app()->createUrl("/unsurPenunjang/view", array("id" => $data->ID_UNSUR_PENUNJANG))',
                                    ),
                                    'delete' => array(
                                        'label' => 'delete',
                                        'url' => 'Yii::app()->createUrl("/unsurPenunjang/delete", array("id" => $data->ID_UNSUR_PENUNJANG))',
                                    ),
                                    'update' => array(
                                        'label' => 'update',
                                        'url' => 'Yii::app()->createUrl("/unsurPenunjang/update", array("id"=>$data->ID_UNSUR_PENUNJANG))'
                                    ),
                                ),
                            ),
                        ),
                    ));
                    ?>
                </div>
            </div>
        </div>
    </div>
</div>
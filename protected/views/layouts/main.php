<!DOCTYPE html>
<!-- 
Template Name: Metronic - Responsive Admin Dashboard Template build with Twitter Bootstrap 3.2.0
Version: 3.1.1
Author: KeenThemes
Website: http://www.keenthemes.com/
Contact: support@keenthemes.com
Follow: www.twitter.com/keenthemes
Like: www.facebook.com/keenthemes
Purchase: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes
License: You must have a valid license purchased only from themeforest(the above link) in order to legally use the theme for your project.
-->
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
    <!--<![endif]-->
    <!-- BEGIN HEAD -->
    <head>
        <meta charset="utf-8"/>
        <title>Sistem Pengajuan Angka Kredit</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
        <meta content="Sistem Pengelolaan Angka Kredit" name="description"/>
        <meta content="Bagus" name="author"/>
        <meta name="MobileOptimized" content="320">
        <!--<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css"/>-->
        <link href="<?php echo Yii::app()->getBaseUrl() ?>/asset2/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="<?php echo Yii::app()->getBaseUrl() ?>/asset2/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css"/>
        <link href="<?php echo Yii::app()->getBaseUrl() ?>/asset2/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="<?php echo Yii::app()->getBaseUrl() ?>/asset2/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css"/>
        <!--<link href="<?php echo Yii::app()->getBaseUrl() ?>/asset2/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css"/>-->
        <!-- END GLOBAL MANDATORY STYLES -->
        <!-- BEGIN PAGE LEVEL PLUGIN STYLES -->
        <link href="<?php echo Yii::app()->getBaseUrl() ?>/asset2/global/plugins/gritter/css/jquery.gritter.css" rel="stylesheet" type="text/css"/>
        <link href="<?php echo Yii::app()->getBaseUrl() ?>/asset2/global/plugins/bootstrap-daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css"/>
        <link href="<?php echo Yii::app()->getBaseUrl() ?>/asset2/global/plugins/fullcalendar/fullcalendar/fullcalendar.css" rel="stylesheet" type="text/css"/>
        <link href="<?php echo Yii::app()->getBaseUrl() ?>/asset2/global/plugins/jqvmap/jqvmap/jqvmap.css" rel="stylesheet" type="text/css"/>
        <!-- END PAGE LEVEL PLUGIN STYLES -->
        <!-- BEGIN PAGE STYLES -->
        <link href="<?php echo Yii::app()->getBaseUrl() ?>/asset2/admin/pages/css/tasks.css" rel="stylesheet" type="text/css"/>
        <!-- END PAGE STYLES -->
        <link href="<?php echo Yii::app()->getBaseUrl() ?>/asset2/admin/layout/css/layout.css" rel="stylesheet" type="text/css"/>
        <link href="<?php echo Yii::app()->getBaseUrl() ?>/asset2/admin/layout/css/themes/grey.css" rel="stylesheet" type="text/css" />
        <!--cek theme style dengan yang di bawah ini-->
        <link href="<?php echo Yii::app()->getBaseUrl() ?>/asset2/css/style-metronic.css" rel="stylesheet" type="text/css"/>
        <link href="<?php echo Yii::app()->getBaseUrl() ?>/asset2/css/style.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->getBaseUrl() ?>/asset2/plugins/select2/select2_metro.css"/>
        <link href="<?php echo Yii::app()->getBaseUrl() ?>/asset2/css/style-responsive.css" rel="stylesheet" type="text/css"/>
        <link href="<?php echo Yii::app()->getBaseUrl() ?>/asset2/css/plugins.css" rel="stylesheet" type="text/css"/>
        <link href="<?php echo Yii::app()->getBaseUrl() ?>/asset2/css/pages/news.css" rel="stylesheet" type="text/css"/>
        <link href="<?php echo Yii::app()->getBaseUrl() ?>/asset2/css/custom.css" rel="stylesheet" type="text/css"/>
        <!-- END THEME STYLES -->
        <link rel="shortcut icon" href="<?php echo Yii::app()->getBaseUrl() ?>/img/favicon.ico"/>
    </head>
    <body class="page-header-fixed page-quick-sidebar-over-content">
        <!-- BEGIN HEADER -->
        <div class="page-header navbar navbar-fixed-top">
            <!-- BEGIN HEADER INNER -->
            <div class="page-header-inner">
                <!-- BEGIN LOGO -->
                <div class="page-logo">
                    <a href="<?php echo Yii::app()->createUrl('site/index'); ?>">
                        <img src="<?php echo Yii::app()->getBaseUrl() ?>/img/angker.png" alt="" />
                    </a>

                    <div class="menu-toggler sidebar-toggler hide">
                        <!-- DOC: Remove the above "hide" to enable the sidebar toggler button on header -->
                    </div>
                </div>
                <!-- BEGIN RESPONSIVE MENU TOGGLER -->
                <a href="javascript:;" class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse">
                </a> 
                <!-- BEGIN TOP NAVIGATION MENU -->
                <div class="top-menu">
                    <ul class="nav navbar-nav pull-right">


                    </ul>
                </div>
                <!-- END TOP NAVIGATION MENU -->
            </div>
            <!-- END HEADER INNER -->
        </div>
        <!-- END HEADER -->
        <div class="clearfix">
        </div>
        <!-- BEGIN CONTAINER -->
        <div class="page-container">
            <!-- BEGIN SIDEBAR -->
            <div class="page-sidebar-wrapper">
                <!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
                <!-- DOC: Change data-auto-speed="200" to adjust the sub menu slide up/down speed -->
                <div class="page-sidebar navbar-collapse collapse">
                    <!-- BEGIN SIDEBAR MENU -->
                    <ul class="page-sidebar-menu" data-auto-scroll="true" data-slide-speed="200"><br>
                        <!-- DOC: To remove the sidebar toggler from the sidebar you just need to completely remove the below "sidebar-toggler-wrapper" LI element -->
                        <li class="sidebar-toggler-wrapper">
                            <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
                            <div class="sidebar-toggler">
                            </div>
                            <!-- END SIDEBAR TOGGLER BUTTON -->
                        </li>
                        <!-- DOC: To remove the search box from the sidebar you just need to completely remove the below "sidebar-search-wrapper" LI element -->
                        <li class="sidebar-search-wrapper hidden-xs"><br>
                        </li>				

                        <li class="start active ">
                            <a href="<?php echo Yii::app()->createUrl('site/index'); ?>">
                                <i class="icon-home"></i>
                                <span class="title">Dashboard</span>
                                <span class="selected"></span>
                            </a>
                        </li>
                        <?php if (!Yii::app()->user->isGuest && Yii::app()->user->LEVEL == '1'): ?>
                            <li>
                                <a href="javascript:;">
                                    <i class="icon-folder"></i>
                                    <span class="title">Data Dosen</span>
                                    <span class="arrow "></span>
                                </a>
                                <ul class="sub-menu">
                                    <li>
                                        <a href="<?php echo Yii::app()->createUrl('tblDosen/admin'); ?>">
                                            <i class="icon-layers"></i>
                                            Kelola Data Dosen</a>
                                    </li>
                                    <li>
                                        <a href="<?php echo Yii::app()->createUrl('tblJabatan/admin'); ?>">
                                            <i class="icon-grid"></i>
                                            Jabatan Dosen</a>
                                    </li>
                                    <li>
                                        <a href="<?php echo Yii::app()->createUrl('tblStatusKepegawaian/admin'); ?>">
                                            <i class="icon-grid"></i>
                                            Status Kepegawaian</a>
                                    </li>
                                    <li>
                                        <a href="<?php echo Yii::app()->createUrl('tblGolongan/admin'); ?>">
                                            <i class="icon-layers"></i>
                                            Golongan Dosen</a>
                                    </li>                                                                                         
                                </ul>
                            </li>	
                        <?php endif; ?>
                        <?php if (!Yii::app()->user->isGuest && Yii::app()->user->LEVEL == '1'): ?>
                            <li>
                                <a href="javascript:;">
                                    <i class="icon-list"></i>
                                    <span class="title">Angka Kredit</span>
                                    <span class="arrow "></span>
                                </a>
                                <ul class="sub-menu">

                                    <li>
                                        <a href="<?php echo Yii::app()->createUrl('tblDosen/aktetap'); ?>">
                                            <i class="icon-note"></i>
                                            Angka Kredit Tetap
                                        </a>
                                    </li>
                                    <li>
                                        <a href="<?php echo Yii::app()->createUrl('tblDosen/pengajuanak'); ?>">
                                            <i class="icon-notebook"></i>
                                            Pengajuan Angka Kredit
                                        </a>
                                    </li>

                                </ul>
                            </li>
                        <?php endif; ?>
                        <?php if (!Yii::app()->user->isGuest && Yii::app()->user->LEVEL == '1'): ?>
                            <li>
                                <a href="javascript:;">
                                    <i class="icon-briefcase"></i>
                                    <span class="title">
                                        Sub Unsur Angka Kredit </span>
                                    <span class="arrow">
                                    </span>
                                </a>
                                <ul class="sub-menu">
                                    <li>
                                        <a href="<?php echo Yii::app()->createUrl('subunPend/admin'); ?>">
                                            <i class="icon-tag"></i>
                                            Sub Unsur Pendidikan 
                                        </a>
                                    </li>
                                    <li>
                                        <a href="<?php echo Yii::app()->createUrl('subunPelpend/admin'); ?>">
                                            <i class="icon-doc "></i>
                                            Sub Unsur Pelaksanaan Pendidikan</a>
                                    </li>
                                    <li>
                                        <a href="<?php echo Yii::app()->createUrl('subunPenelitian/admin'); ?>">
                                            <i class="icon-tag"></i>
                                            Sub Unsur Penelitian
                                        </a>
                                    </li>
                                    <li>
                                        <a href="<?php echo Yii::app()->createUrl('subunPengabdian/admin'); ?>">
                                            <i class="icon-doc "></i>
                                            Sub Unsur Pengabdian
                                        </a>
                                    </li>
                                    <li>
                                        <a href="<?php echo Yii::app()->createUrl('subunPenunjang/admin'); ?>">
                                            <i class="icon-tag"></i>
                                            Sub Unsur Penunjang
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        <?php endif; ?>
                        <?php if (!Yii::app()->user->isGuest && Yii::app()->user->LEVEL == '2'): ?>
                            <li>
                                <a href="javascript:;">
                                    <i class="icon-drawer"></i>
                                    <span class="title">Info</span>
                                    <span class="arrow "></span>
                                </a>
                                <ul class="sub-menu">						
                                    
                                    <li>
                                        <a href="<?php echo Yii::app()->createUrl('site/lihatpengajuan'); ?>">
                                            <i class="icon-basket"></i>
                                            Info Pengajuan Angka Kredit
                                        </a>
                                    </li>
                                    
                                    <li>
                                        <a href="<?php echo Yii::app()->createUrl('site/ajukan'); ?>">
                                            <i class="icon-basket"></i>
                                            Tambah Pengajuan Angka Kredit
                                        </a>
                                    </li>
                                    
                                    <li>
                                        <a href="<?php echo Yii::app()->createUrl('site/aktetapdosen'); ?>">
                                            <i class="icon-basket"></i>
                                            Info Angka Kredit Tetap
                                        </a>
                                    </li>
                                    <!--
                                    <li>
                                        <a href="<?php echo Yii::app()->createUrl('tblDokumenDosen/indexDosen'); ?>">
                                            <i class="icon-tag"></i>
                                            Dokumen Saya
                                        </a>
                                    </li>
									-->
                                    <li>
                                        <a href="<?php echo Yii::app()->createUrl('user/ubahpassword'); ?>">
                                            <i class="icon-user"></i>
                                            Ubah Password
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        <?php endif; ?>
                        <?php if (!Yii::app()->user->isGuest && Yii::app()->user->LEVEL == '2'): ?>
                            <li>
                                <a href="javascript:;">
                                    <i class="icon-share"></i>
                                    <span class="title">Peraturan Angka Kredit</span>
                                    <span class="arrow "></span>
                                </a>
                                <ul class="sub-menu">

                                    <li>
                                        <a href="<?php echo Yii::app()->createUrl('tblInfo/tampilInfo'); ?>">
                                            <i class="icon-basket"></i>
                                            Angka Kredit Paling Rendah S2
                                        </a>
                                    </li>
                                    <li>
                                        <a href="<?php echo Yii::app()->createUrl('tblInfo/tampilStiga'); ?>">
                                            <i class="icon-tag"></i>
                                            Angka Kredit Paling Rendah S3
                                        </a>
                                    </li>
                                    <li>
                                        <a href="<?php echo Yii::app()->createUrl('tblPersen/tampilpersen'); ?>">
                                            <i class="icon-tag"></i>
                                            Presentase Angka Kredit
                                        </a>
                                    </li>

                                    <li>
                                        <a href="<?php echo Yii::app()->createUrl('tblDownload/tampil'); ?>">
                                            <i class="icon-cloud-download"></i>
                                            Download Peraturan Angka Kredit
                                        </a>
                                    </li>

                                </ul>
                            </li>
                        <?php endif; ?>
                        <?php if (!Yii::app()->user->isGuest && Yii::app()->user->LEVEL == '1'): ?>
                            <li>
                                <a href="javascript:;">
                                    <i class="icon-social-dropbox"></i>
                                    <span class="title">Peraturan Angka Kredit</span>
                                    <span class="arrow "></span>
                                </a>
                                <ul class="sub-menu">

                                    <li>
                                        <a href="<?php echo Yii::app()->createUrl('tblInfo/admin'); ?>">
                                            <i class="icon-directions"></i>
                                            Angka Kredit Paling Rendah
                                        </a>
                                    </li>

                                    <li>
                                        <a href="<?php echo Yii::app()->createUrl('tblPersen/admin'); ?>">
                                            <i class="icon-tag"></i>
                                            Presentase Angka Kredit
                                        </a>
                                    </li>

                                    <li>
                                        <a href="<?php echo Yii::app()->createUrl('tblDownload/admin'); ?>">
                                            <i class="icon-cloud-upload"></i>
                                            Upload Peraturan Angka Kredit
                                        </a>
                                    </li>

                                </ul>
                            </li>
                        <?php endif; ?>
                        <?php if (!Yii::app()->user->isGuest && Yii::app()->user->LEVEL == '1'): ?>
                            <li>
                                <a href="javascript:;">
                                    <i class="icon-envelope"></i>
                                    <span class="title">Master</span>
                                    <span class="arrow "></span>
                                </a>
                                <ul class="sub-menu">

                                    <li>
                                        <a href="<?php echo Yii::app()->createUrl('tblFakultas/admin'); ?>">
                                            <i class="icon-basket"></i>
                                            Fakultas
                                        </a>
                                    </li>
                                    <li>
                                        <a href="<?php echo Yii::app()->createUrl('tblJurusan/admin'); ?>">
                                            <i class="icon-tag"></i>
                                            Jurusan
                                        </a>
                                    </li>

                                    <li>
                                        <a href="<?php echo Yii::app()->createUrl('user/admin'); ?>">
                                            <i class="icon-user"></i>
                                            Pengguna
                                        </a>
                                    </li>

                                    <li>
                                        <a href="<?php echo Yii::app()->createUrl('user/ubahpassword'); ?>">
                                            <i class="icon-check"></i>
                                            Ubah Password
                                        </a>
                                    </li>

                                </ul>
                            </li>
                        <?php endif; ?>
                        <li>
                            <a href="javascript:;">
                                <i class="icon-docs"></i>
                                <span class="title">PSI-FEB</span>
                                <span class="arrow "></span>
                            </a>
                            <ul class="sub-menu">
                                <li>

                                    <a href="<?php echo Yii::app()->createUrl('user/aboutpsi'); ?>">
                                        <i class="icon-info"></i>
                                        About Us
                                    </a>
                                </li>

                                <li>
                                    <a href="<?php echo Yii::app()->createUrl('site/manualuser'); ?>">
                                        <i class="fa fa-book"></i>
                                        Manual Book
                                    </a>
                                </li>

                                <!--<li>
                                        <a href="<?php //echo Yii::app() ->createUrl('site/page_calendar.php'); ?>">
                                        <i class="icon-calendar"></i>
                                        <span class="badge badge-danger"></span>Calendar</a>
                                </li>-->
                            </ul>
                        </li>



                        <!--membuat menu siapa yang login-->
                        <li class="start active ">
                            <?php
                            if (!Yii::app()->user->isGuest) {
                                //echo '<a href="#">Welcome : '.Yii::app()->user->id.'</a>';
                            } else {
                                echo CHtml::link('<i class="icon-user"></i> Login', array('site/login'));
                            }
                            ?>
                        </li>

                        <li class="start active ">
                            <a href="<?php echo Yii::app()->createUrl('site/logout'); ?>">
                                <i class="fa fa-power-off"></i>
                                <span class="title">Logout</span>
                                <span class="selected"></span>
                            </a>
                        </li>
                        <!--END LOGIN-->

                    </ul>
                    <!-- END SIDEBAR MENU -->

                </div>
            </div>



            <!-- END SIDEBAR -->
            <!-- BEGIN CONTENT -->
            <div class="page-content-wrapper">

                <div class="page-content">
                    <?php echo $content ?>
                </div>
            </div>
            <!-- END CONTAINER -->
            <!-- BEGIN FOOTER -->
            <div class="page-footer">
                <div class="page-footer-inner">
                    2015 &copy; by Planning and Information System FEB-UNSOED.
                </div>
                <div class="page-footer-tools">
                    <span class="go-top">
                        <i class="fa fa-angle-up"></i>
                    </span>
                </div>
            </div>
            <!-- END FOOTER -->
            <!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
            <!-- BEGIN CORE PLUGINS -->
            <!--[if lt IE 9]>
            <script src="../../assets/global/plugins/respond.min.js"></script>
            <script src="../../assets/global/plugins/excanvas.min.js"></script> 
            <![endif]-->
            <!--script src="assets/plugins/jquery-1.10.2.min.js" type="text/javascript"></script-->
            <?php Yii::app()->clientScript->registerCoreScript('jquery'); ?>
            <!--<script src="<?php //echo Yii::app()->getBaseUrl() ?>/asset2/global/plugins/jquery-1.11.0.min.js" type="text/javascript"></script>
            <script src="<?php //echo Yii::app()->getBaseUrl() ?>/asset2/global/plugins/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
            <!-- IMPORTANT! Load jquery-ui-1.10.3.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
            <script src="<?php echo Yii::app()->getBaseUrl() ?>/asset2/global/plugins/jquery-ui/jquery-ui-1.10.3.custom.min.js" type="text/javascript"></script>
            <script src="<?php echo Yii::app()->getBaseUrl() ?>/asset2/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
            <script src="<?php echo Yii::app()->getBaseUrl() ?>/asset2/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
            <script src="<?php echo Yii::app()->getBaseUrl() ?>/asset2/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
            <script src="<?php echo Yii::app()->getBaseUrl() ?>/asset2/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
            <script src="<?php echo Yii::app()->getBaseUrl() ?>/asset2/global/plugins/jquery.cokie.min.js" type="text/javascript"></script>
            <script src="<?php echo Yii::app()->getBaseUrl() ?>/asset2/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
            <script src="<?php echo Yii::app()->getBaseUrl() ?>/asset2/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
            <!-- END CORE PLUGINS -->

            <!-- BEGIN PAGE LEVEL PLUGINS -->
            <script src="<?php echo Yii::app()->getBaseUrl() ?>/asset2/global/plugins/jqvmap/jqvmap/jquery.vmap.js" type="text/javascript"></script>
            <script src="<?php echo Yii::app()->getBaseUrl() ?>/asset2/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.russia.js" type="text/javascript"></script>
            <script src="<?php echo Yii::app()->getBaseUrl() ?>/asset2/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.world.js" type="text/javascript"></script>
            <script src="<?php echo Yii::app()->getBaseUrl() ?>/asset2/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.europe.js" type="text/javascript"></script>
            <script src="<?php echo Yii::app()->getBaseUrl() ?>/asset2/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.germany.js" type="text/javascript"></script>
            <script src="<?php echo Yii::app()->getBaseUrl() ?>/asset2/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.usa.js" type="text/javascript"></script>
            <script src="<?php echo Yii::app()->getBaseUrl() ?>/asset2/global/plugins/jqvmap/jqvmap/data/jquery.vmap.sampledata.js" type="text/javascript"></script>
            <script src="<?php echo Yii::app()->getBaseUrl() ?>/asset2/global/plugins/flot/jquery.flot.min.js" type="text/javascript"></script>
            <script src="<?php echo Yii::app()->getBaseUrl() ?>/asset2/global/plugins/flot/jquery.flot.resize.min.js" type="text/javascript"></script>
            <script src="<?php echo Yii::app()->getBaseUrl() ?>/asset2/global/plugins/flot/jquery.flot.categories.min.js" type="text/javascript"></script>
            <script src="<?php echo Yii::app()->getBaseUrl() ?>/asset2/global/plugins/jquery.pulsate.min.js" type="text/javascript"></script>
            <script src="<?php echo Yii::app()->getBaseUrl() ?>/asset2/global/plugins/bootstrap-daterangepicker/moment.min.js" type="text/javascript"></script>
            <script src="<?php echo Yii::app()->getBaseUrl() ?>/asset2/global/plugins/bootstrap-daterangepicker/daterangepicker.js" type="text/javascript"></script>
            <!-- IMPORTANT! fullcalendar depends on jquery-ui-1.10.3.custom.min.js for drag & drop support -->
            <script src="<?php echo Yii::app()->getBaseUrl() ?>/asset2/global/plugins/fullcalendar/fullcalendar/fullcalendar.min.js" type="text/javascript"></script>
            <script src="<?php echo Yii::app()->getBaseUrl() ?>/asset2/global/plugins/jquery-easypiechart/jquery.easypiechart.min.js" type="text/javascript"></script>
            <script src="<?php echo Yii::app()->getBaseUrl() ?>/asset2/global/plugins/jquery.sparkline.min.js" type="text/javascript"></script>
            <script src="<?php echo Yii::app()->getBaseUrl() ?>/asset2/global/plugins/gritter/js/jquery.gritter.js" type="text/javascript"></script>
            <!-- END PAGE LEVEL PLUGINS -->
            <!-- BEGIN PAGE LEVEL SCRIPTS -->
            <script src="<?php echo Yii::app()->getBaseUrl() ?>/asset2/global/scripts/metronic.js" type="text/javascript"></script>
            <script src="<?php echo Yii::app()->getBaseUrl() ?>/asset2/admin/layout/scripts/layout.js" type="text/javascript"></script>
            <script src="<?php echo Yii::app()->getBaseUrl() ?>/asset2/admin/layout/scripts/quick-sidebar.js" type="text/javascript"></script>
            <script src="<?php echo Yii::app()->getBaseUrl() ?>/asset2/admin/pages/scripts/index.js" type="text/javascript"></script>
            <script src="<?php echo Yii::app()->getBaseUrl() ?>/asset2/admin/pages/scripts/tasks.js" type="text/javascript"></script>
            <!-- END PAGE LEVEL SCRIPTS -->

            <script scr="<?php echo Yii::app()->getBaseUrl() ?>/asset2/scripts/app.js"></script>
            <script>
                jQuery(document).ready(function () {
                    Metronic.init(); // init metronic core componets
                    Layout.init(); // init layout

                    QuickSidebar.init() // init quick sidebar
                    Index.init();
                    Index.initDashboardDaterange();
                    Index.initJQVMAP(); // init index page's custom scripts
                    Index.initCalendar(); // init index page's custom scripts
                    Index.initCharts(); // init index page's custom scripts
                    //Index.initChat();
                    //Index.initMiniCharts();
                    //Index.initIntro();
                    //Tasks.initDashboardWidget();
                });

            </script>
            <!-- END JAVASCRIPTS -->
    </body>
    <!-- END BODY -->
</html>
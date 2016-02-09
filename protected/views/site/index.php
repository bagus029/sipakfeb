<?php
/* @var $this SiteController */

$this->pageTitle=Yii::app()->name;
?>

<div class="raw">
    <div class="col-md-12 ">
        
        <div class="top-news">
            <a class="btn blue" href="#">
                <span>
                    <i class="icon-ghost"></i>
                    SIPAK - Fakultas Ekonomi dan Bisnis
                </span>
                <i class="fa fa-clipboard top-news-icon"></i>
            </a>
        </div>
        <div class="news-blocks red">
            <h3>
                <a href="">Sistem Pengajuan Angka Kredit </a>
            </h3>
            <div class="news-block-tags"> </div>
            <p style="text-align: left"> </p>

<p><h4></h4></p>

<p></p>
<ul>
    
<div align="center">
    <img src="img/Anker.png" />
</div>

	<!--<li> <code><?php //echo __FILE__; ?></code></li>
	<li> <code><?php //echo $this->getLayoutFile('main'); ?></code></li>-->
</ul>


<p></p>

<!--//Cek User & Group login beserta jumlah sesion login-->
        <?php if(Yii::app()->user->isGuest) {
            echo 'Who is online';
                        } else {
                echo 'Registered users : ';
                echo Yii::app()->user->USERNAME.'<br>';
        }
        ?>

        </div>
    </div>
    <!--membuat tombol perintah tanbahan-->
    
        <div class="col-md-12 ">
        <div class="btn">
            <?php //echo CHtml::link('About', array('site/page?view=about'), array('class' => 'btn btn-xs green')) ?>
            <?php //echo CHtml::link('Countact Us', array('site/contact'), array('class' => 'btn btn-xs red')) ?>
        </div>
        </div>
    </div>
    


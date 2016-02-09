<?php
/* @var $this SiteController */
/* @var $model LoginForm */
/* @var $form CActiveForm  */

$this->pageTitle = Yii::app()->name . ' - Login';
$this->breadcrumbs = array(
    'Login',
);
?>

<fieldset>

    <?php
    $form = $this->beginWidget('CActiveForm', array(
        'id' => 'login-form',
        'enableClientValidation' => true,
        'clientOptions' => array(
            'validateOnSubmit' => true,
        ),
    ));
    ?>

    <p class="note"></p>

    <div class="form-group">
<?php //echo $form->labelEx($model,'username');  ?>
<?php echo $form->textField($model, 'username', array('class' => 'form-control', 'placeHolder' => 'Username')); ?>
        <strong class="alert-error"><?php echo $form->error($model, 'username'); ?></strong>
    </div>

    <div class="form-group">
<?php //echo $form->labelEx($model,'password');  ?>
<?php echo $form->passwordField($model, 'password', array('class' => 'form-control', 'placeHolder' => 'Password')); ?>
            <strong class="alert-error"><?php echo $form->error($model, 'password'); ?></strong>
    </div>
    <!--
            <div class="row rememberMe">
    <?php echo $form->checkBox($model, 'rememberMe'); ?>
<?php echo $form->label($model, 'rememberMe'); ?>
<?php echo $form->error($model, 'rememberMe'); ?>
            </div>
    -->

    <?php echo CHtml::submitButton('Login', array('class' => 'btn btn-danger')); ?>


<?php $this->endWidget(); ?>
</fieldset>
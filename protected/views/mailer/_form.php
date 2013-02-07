<?php
/* @var $this MailerController */
/* @var $model Mailer */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'mailer-form',
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'subject'); ?>
		<?php echo $form->textField($model,'subject',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'subject'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'body'); ?>
		<?php echo $form->textField($model,'body',array('size'=>60,'maxlength'=>10240)); ?>
		<?php echo $form->error($model,'body'); ?>
	</div>

  <div class="row">
    <?php $listMailHtml = CHtml::listData($listMail,'id', 'name'); ?>
    <?php echo CHtml::dropDownList('Email', $listMail, $listMailHtml, array('empty' => '(Выберите email)','multiple'=>'multiple', 'size'=>20)); ?>
  </div>


	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->
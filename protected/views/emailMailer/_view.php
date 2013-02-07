<?php
/* @var $this EmailMailerController */
/* @var $data EmailMailer */
?>

<div class="view">


	<b><?php echo CHtml::encode($data->getAttributeLabel('Email')); ?>:</b>
	<?php echo CHtml::encode($data->idEmail->email); ?>
	<br />

  <b><?php echo CHtml::encode($data->getAttributeLabel('Subject')); ?>:</b>
  <?php echo CHtml::encode($data->idMail->subject); ?>
  <br />
	<b><?php echo CHtml::encode($data->getAttributeLabel('Body')); ?>:</b>
	<?php echo CHtml::encode($data->idMail->body); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('status')); ?>:</b>
	<?php echo CHtml::encode($data->status); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('created_at')); ?>:</b>
	<?php echo CHtml::encode($data->created_at); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('update_at')); ?>:</b>
	<?php echo CHtml::encode($data->update_at); ?>
	<br />


</div>
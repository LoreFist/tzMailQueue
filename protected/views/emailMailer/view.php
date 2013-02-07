<?php
/* @var $this EmailMailerController */
/* @var $model EmailMailer */

$this->breadcrumbs=array(
	'Очередь рассылки'=>array('index'),
	$model->id,
);

$this->menu=array(
  array('label'=>'Очередь рассылки', 'url'=>array('index')),
  array('label'=>'Просмотр', 'url'=>array('admin')),
);
?>

<h1>Очередь рассылки письма #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
    array(
      'name'   => 'id_mail',
      'label' => 'Subject рассылки',
      'value'  => $model->idMail->subject,
    ),
    array(
      'name'   => 'id_mail',
      'label' => 'Текст рассылки',
      'value'  => $model->idMail->body,
    ),
    array(
      'name'   => 'id_email',
      'label' => 'Email получателя',
      'value'  => $model->idEmail->email,
    ),
    array(
      'name'   => 'created_at',
    ),
    array(
      'name'=>'status',
      'label'=>'Статус',
    ),
    array(
      'name'   => 'update_at',
    ),

	),
)); ?>

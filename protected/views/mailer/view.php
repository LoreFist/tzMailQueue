<?php
/* @var $this MailerController */
/* @var $model Mailer */

$this->breadcrumbs=array(
	'Рассылки'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'Список рассылок', 'url'=>array('index')),
	array('label'=>'Новая рассылка', 'url'=>array('create')),
	array('label'=>'Редактирование рассылки', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Удаление рассылки', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Управление рассылками', 'url'=>array('admin')),
);
?>

<h1>Просмотр рассылки #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'subject',
		'body',
	),
)); ?>

<?php
/* @var $this MailerController */
/* @var $model Mailer */

$this->breadcrumbs=array(
	'Рассылки'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Редактирование',
);

$this->menu=array(
	array('label'=>'Список рассылок', 'url'=>array('index')),
	array('label'=>'Новая рассылка', 'url'=>array('create')),
	array('label'=>'Просмотр рассылки', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Управление рассылками', 'url'=>array('admin')),
);
?>

<h1>Редактирование рассылки <?php echo $model->id; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model,'listMail'=>$listMail)); ?>
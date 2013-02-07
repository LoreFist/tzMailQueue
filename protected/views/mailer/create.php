<?php
/* @var $this MailerController */
/* @var $model Mailer */

$this->breadcrumbs=array(
	'Рассылки'=>array('index'),
	'Новая',
);

$this->menu=array(
	array('label'=>'Список рассылок', 'url'=>array('index')),
	array('label'=>'Управление рассылками', 'url'=>array('admin')),
);
?>

<h1>Создание новой рассылки</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model, 'listMail'=>$listMail)); ?>
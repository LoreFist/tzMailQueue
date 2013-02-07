<?php
/* @var $this MailerController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Рассылки',
);

$this->menu=array(
	array('label'=>'Создание рассылки', 'url'=>array('create')),
	array('label'=>'Управление рассылками', 'url'=>array('admin')),
);
?>

<h1>Рассылки</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>

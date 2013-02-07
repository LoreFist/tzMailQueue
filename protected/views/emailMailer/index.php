<?php
/* @var $this EmailMailerController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Очередь рассылки',
);

$this->menu=array(
	array('label'=>'Просмотр', 'url'=>array('admin')),
);
?>

<h1>Очередь рассылки</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>

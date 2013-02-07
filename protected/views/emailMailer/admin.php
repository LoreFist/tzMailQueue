<?php
/* @var $this EmailMailerController */
/* @var $model EmailMailer */

$this->breadcrumbs=array(
	'Очередь рассылки'=>array('index'),
	'Просмотр',
);

$this->menu=array(
	array('label'=>'Очередь рассылки', 'url'=>array('index')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#email-mailer-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Просмотр очереди рассылки</h1>


<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'email-mailer-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		array(
      'name'   => 'id_mail',
      'header' => 'Subject рассылки',
      'value'  => '$data->idMail->subject',
      'filter' => false,
    ),
    array(
      'name'   => 'id_mail',
      'header' => 'Текст рассылки',
      'value'  => '$data->idMail->body',
      'filter' => false,
    ),
    array(
      'name'   => 'id_email',
      'header' => 'Email получателя',
      'value'  => '$data->idEmail->email',
      'filter' => false,
    ),
    array(
      'name'   => 'created_at',
      'filter' => false,
    ),
    array(
      'name'=>'status',
      'header'=>'Статус',
      'filter'=>array('Ожидает'=>'Ожидает','Отправленно'=>'Отправленно', 'Ошибка'=>'Ошибка'),
    ),
    array(
      'name'   => 'update_at',
      'filter' => false,
    ),
		array(
			'class'=>'CButtonColumn',
      'template'=>'{view}{delete}',
		),
	),
)); ?>

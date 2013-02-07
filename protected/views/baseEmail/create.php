<?php
/* @var $this BaseEmailController */
/* @var $model BaseEmail */

$this->breadcrumbs=array(
	'База контактов'=>array('index'),
	'Новый email',
);

$this->menu=array(
	array('label'=>'Список контактов', 'url'=>array('index'))
);
?>

<h1>Новый контакт</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
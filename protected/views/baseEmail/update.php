<?php
/* @var $this BaseEmailController */
/* @var $model BaseEmail */

$this->breadcrumbs=array(
	'База email адрессов'=>array('index'),
	$model->name,
	'Редактирование',
);

$this->menu=array(
	array('label'=>'База контактов', 'url'=>array('index')),
	array('label'=>'Новый email', 'url'=>array('create')),
);
?>

<h1>Update BaseEmail <?php echo $model->id; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
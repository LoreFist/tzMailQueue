<?php

class mailCommand extends CConsoleCommand
{
  public function actionIndex(){
    $sql = "UPDATE `email_mailer` SET `status` = 'Отправленно', `update_at`='".date('Y-m-d H:i:s')."' WHERE `status` ='Ожидает'; LIMIT 50";
    Yii::app()->db->createCommand($sql)->execute();
    return 0;
  }
}

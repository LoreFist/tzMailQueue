<?php

/**
 * This is the model class for table "email_mailer".
 *
 * The followings are the available columns in table 'email_mailer':
 * @property integer $id
 * @property integer $id_email
 * @property integer $id_mail
 * @property string $status
 * @property string $created_at
 * @property string $update_at
 *
 * The followings are the available model relations:
 * @property Mailer $idMail
 * @property BaseEmail $idEmail
 */
class EmailMailer extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return EmailMailer the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'email_mailer';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('id_email, id_mail, created_at', 'required'),
			array('id_email, id_mail', 'numerical', 'integerOnly'=>true),
			array('status', 'length', 'max'=>255),
			array('update_at', 'safe'),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id, id_email, id_mail, status, created_at, update_at', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
			'idMail' => array(self::BELONGS_TO, 'Mailer', 'id_mail'),
			'idEmail' => array(self::BELONGS_TO, 'BaseEmail', 'id_email'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'created_at' => 'Дата создания',
			'update_at' => 'Дата отправления',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 * @return CActiveDataProvider the data provider that can return the models based on the search/filter conditions.
	 */
	public function search()
	{
		// Warning: Please modify the following code to remove attributes that
		// should not be searched.

		$criteria=new CDbCriteria;
		$criteria->compare('status',$this->status,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}
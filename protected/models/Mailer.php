<?php

/**
 * This is the model class for table "mailer".
 *
 * The followings are the available columns in table 'mailer':
 * @property string id_email$subject
 * @property string $body
 *
 * The followings are the available model relations:
 * @property EmailMailer[] $emailMailers
 */
class Mailer extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Mailer the static model class
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
		return 'mailer';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('body', 'required'),
			array('subject', 'length', 'max'=>255),
			array('body', 'length', 'max'=>10240),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id, subject, body', 'safe', 'on'=>'search'),
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
      'emailMailers' => array(self::HAS_MANY, 'EmailMailer', 'id_email'),
    );
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'subject' => 'Subject',
			'body' => 'Body',
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

		$criteria->compare('id',$this->id);
		$criteria->compare('subject',$this->subject,true);
		$criteria->compare('body',$this->body,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

  /**
   * list emails for mailer
   */
  private $emails;

  /**
   * set list emails
   * @param array
   */
  public function setEmails($emails){
    $this->emails = $emails;
  }

  /**
   * get list emails
   * @return array
   */
  public function getEmails(){
    return $this->emails;
  }

  /**
   * redefinition method save model, save relations
   * @return bool
   */
  public function save(){
    $save = parent::save();
    if($save){
      foreach($this->getEmails() as $emailId){
        $em = new EmailMailer();
        $em->id_email = $emailId;
        $em->id_mail = $this->id;
        $em->created_at = date("Y-m-d H:i:s");
        $em->save();
      }
    }
    return $save;
  }

}
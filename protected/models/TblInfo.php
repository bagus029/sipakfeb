<?php

/**
 * This is the model class for table "tbl_info".
 *
 * The followings are the available columns in table 'tbl_info':
 * @property integer $id_info
 * @property string $unsur
 * @property string $sub_unsur
 * @property string $detail_sub_unsur
 * @property integer $tiga_be
 * @property integer $tiga_ce
 * @property integer $tida_de
 * @property integer $empat_a
 * @property integer $empat_be
 * @property integer $empat_ce
 * @property integer $empat_de
 * @property integer $empat_e
 * @property string $jenjang_pendidikan
 * @property string $persentase
 */
class TblInfo extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'tbl_info';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('tiga_be, tiga_ce, tida_de, empat_a, empat_be, empat_ce, empat_de, empat_e', 'numerical', 'integerOnly'=>true),
			array('unsur', 'length', 'max'=>25),
			//array('sub_unsur', 'length', 'max'=>45),
			array('detail_sub_unsur', 'length', 'max'=>35),
			array('jenjang_pendidikan', 'length', 'max'=>4),
                        array('persentase','length','max'=>15),
			array('sub_unsur','safe'),
                        // The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id_info, unsur, persentase, sub_unsur, detail_sub_unsur, tiga_be, tiga_ce, tida_de, empat_a, empat_be, empat_ce, empat_de, empat_e, jenjang_pendidikan', 'safe', 'on'=>'search'),
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
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id_info' => 'Id',
			'unsur' => 'Unsur',
			'sub_unsur' => 'Sub Unsur',
			'detail_sub_unsur' => 'Detail Sub Unsur',
			'tiga_be' => 'III B',
			'tiga_ce' => 'III C',
			'tida_de' => 'III D',
			'empat_a' => 'IV A',
			'empat_be' => 'IV B',
			'empat_ce' => 'IV C',
			'empat_de' => 'IV D',
			'empat_e' => 'IV E',
			'jenjang_pendidikan' => 'Jenjang',
                        'persentase'=>'Persentase',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 *
	 * Typical usecase:
	 * - Initialize the model fields with values from filter form.
	 * - Execute this method to get CActiveDataProvider instance which will filter
	 * models according to data in model fields.
	 * - Pass data provider to CGridView, CListView or any similar widget.
	 *
	 * @return CActiveDataProvider the data provider that can return the models
	 * based on the search/filter conditions.
	 */
	public function search()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('id_info',$this->id_info);
		$criteria->compare('unsur',$this->unsur,true);
		$criteria->compare('sub_unsur',$this->sub_unsur,true);
		$criteria->compare('detail_sub_unsur',$this->detail_sub_unsur,true);
		$criteria->compare('tiga_be',$this->tiga_be);
		$criteria->compare('tiga_ce',$this->tiga_ce);
		$criteria->compare('tida_de',$this->tida_de);
		$criteria->compare('empat_a',$this->empat_a);
		$criteria->compare('empat_be',$this->empat_be);
		$criteria->compare('empat_ce',$this->empat_ce);
		$criteria->compare('empat_de',$this->empat_de);
		$criteria->compare('empat_e',$this->empat_e);
		$criteria->compare('jenjang_pendidikan',$this->jenjang_pendidikan,true);
                $criteria->compare('persentase',  $this->persentase,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
        
        public function getUnsur()
        {
            return array(
                '1'=>'Unsur Utama',
                '2'=>'Unsur Penunjang',
                );
        }
        
        public function ubahUnsur()
        {
            if($this->unsur=='1')
                return "Unsur Utama";
            else return "Unsur Penunjang";
        }
        
        public function getJenjang()
        {
            return array(
                '1'=>'S1',
                '2'=>'S2',
                '3'=>'S3',
            );
        }
        
        public function ubahJenjang()
        {
            if($this->jenjang_pendidikan=='1')
                return "S1";
            elseif($this->jenjang_pendidikan=='2')
                return "S2";
            else return "S3";
        }

        /**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return TblInfo the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}

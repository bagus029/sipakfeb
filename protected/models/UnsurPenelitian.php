<?php

/**
 * This is the model class for table "unsur_penelitian".
 *
 * The followings are the available columns in table 'unsur_penelitian':
 * @property integer $ID_UNSUR_PENELITIAN
 * @property integer $ID_SUBUNPENELITIAN
 * @property integer $ID_DOSEN
 * @property string $KEGIATAN_PENELITIAN
 * @property string $TEMPAT_PENELITIAN
 * @property string $TGL_PENELITIAN
 * @property string $BUKTI_PENELITIAN
 * @property string $NILAI_PEER_REVIEW
 * @property string $NILAI_PENELITIAN
 * @property string $TGL_SUBMIT
 * @property  string $PENGAJUAN_KE
 *
 * The followings are the available model relations:
 * @property SubunPenelitian $iDSUBUNPENELITIAN
 * @property TblDosen $iDDOSEN
 */
class UnsurPenelitian extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'unsur_penelitian';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('PENGAJUAN_KE, BUKTI_PENELITIAN,ID_SUBUNPENELITIAN', 'required'),
			array('ID_UNSUR_PENELITIAN, ID_SUBUNPENELITIAN, ID_DOSEN', 'numerical', 'integerOnly'=>true),
			array('TEMPAT_PENELITIAN, BUKTI_PENELITIAN', 'length', 'max'=>200),
			array('NILAI_PENELITIAN, NILAI_PEER_REVIEW', 'length', 'max'=>10),
                        array('TGL_PENELITIAN','length','max'=>25),
                        array('PENGAJUAN_KE','length','max'=>15),
			array('KEGIATAN_PENELITIAN, TGL_PENELITIAN', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('ID_UNSUR_PENELITIAN, PENGAJUAN_KE, ID_SUBUNPENELITIAN, ID_DOSEN, KEGIATAN_PENELITIAN, TEMPAT_PENELITIAN, TGL_PENELITIAN, BUKTI_PENELITIAN, NILAI_PEER_REVIEW, NILAI_PENELITIAN, TGL_SUBMIT', 'safe', 'on'=>'search'),
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
			'iDSUBUNPENELITIAN' => array(self::BELONGS_TO, 'SubunPenelitian', 'ID_SUBUNPENELITIAN'),
			'iDDOSEN' => array(self::BELONGS_TO, 'TblDosen', 'ID_DOSEN'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'ID_UNSUR_PENELITIAN' => 'Id Unsur Penelitian',
			'ID_SUBUNPENELITIAN' => 'Sub Unsur Penelitian',
			'ID_DOSEN' => 'Nama Dosen',
			'KEGIATAN_PENELITIAN' => 'Kegiatan Penelitian',
			'TEMPAT_PENELITIAN' => 'Tempat Penelitian',
			'TGL_PENELITIAN' => 'Tgl Penelitian',
			'BUKTI_PENELITIAN' => 'Bukti Penelitian',
                        'NILAI_PEER_REVIEW'=>'Nilai Peer Review',
			'NILAI_PENELITIAN' => 'Nilai Penelitian',
			'TGL_SUBMIT' => 'Tgl Submit',
                        'PENGAJUAN_KE'=> 'Pengajuan Kenaikan Ke',
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

		$criteria->compare('ID_UNSUR_PENELITIAN',$this->ID_UNSUR_PENELITIAN);
		$criteria->compare('ID_SUBUNPENELITIAN',$this->ID_SUBUNPENELITIAN);
		$criteria->compare('ID_DOSEN',$this->ID_DOSEN);
		$criteria->compare('KEGIATAN_PENELITIAN',$this->KEGIATAN_PENELITIAN,true);
		$criteria->compare('TEMPAT_PENELITIAN',$this->TEMPAT_PENELITIAN,true);
		$criteria->compare('TGL_PENELITIAN',$this->TGL_PENELITIAN,true);
		$criteria->compare('BUKTI_PENELITIAN',$this->BUKTI_PENELITIAN,true);
                $criteria->compare('NILAI_PEER_REVIEW',  $this->NILAI_PEER_REVIEW,true);
		$criteria->compare('NILAI_PENELITIAN',$this->NILAI_PENELITIAN,true);
		$criteria->compare('TGL_SUBMIT',$this->TGL_SUBMIT,true);
                $criteria->compare('PENGAJUAN_KE', $this->PENGAJUAN_KE,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
			'sort' => array(
                'defaultOrder' => 'ID_UNSUR_PENELITIAN DESC',
            )
		));
	}
        
        public function getPengajuan()
        {
            return array(
                'III B'=>'III B',
                'III C'=>'III C',
                'III D'=>'III D',
                'IV A'=>'IV A',
                'IV B'=>'IV B',
                'IV C'=>'IV C',
                'IV D'=>'IV D',
                'IV E'=>'IV E',
                'ASISTEN AHLI'=>'ASISTEN AHLI',
                'LEKTOR'=>'LEKTOR',
                'LEKTOR KEPALA'=>'LEKTOR KEPALA',
                'PROFESOR'=>'PROFESOR',
            );
        }
	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return UnsurPenelitian the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}

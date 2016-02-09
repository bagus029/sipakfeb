<?php
class EWebUser extends CWebUser{
 
    protected $_model;
	
	
	 protected function loadUser()
    {
        if ( $this->_model === null ) {
                $this->_model = User::model()->findByPk( $this->id );
        }
        return $this->_model;
    }
    
               
	function getLevel()
    {
        $user=$this->loadUser();
        if($user)
            return $user->LEVEL;
        return 100;
    }
         
    function getId_user()
   {
       $user=  $this->loadUser();
       if($user)
           return $user->ID_USER;
       return 100;
   }
   
   function getNama()
   {
       $user=  $this->loadUser();
       if($user)
           return $user->NAMA_USER;
       return 100;
   }
    
    function getSuperAdmin()
    {
       return Yii::app()->user->LEVEL==1;
    }
    
    function getAdmin()
    {
       return Yii::app()->user->LEVEL==2;
    }
    
    function getPegawai()
    {
       return Yii::app()->user->LEVEL==3;
    }
       
        
   
}
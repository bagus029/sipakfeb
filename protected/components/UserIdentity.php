<?php

class UserIdentity extends CUserIdentity
{
    private $_id;
 
    public function authenticate()
    {
        $user=User::model()->findByAttributes(array('USERNAME'=>$this->username));
        if($user===null)
            $this->errorCode=self::ERROR_USERNAME_INVALID;
        else if($user->PASSWORD!==($this->password))
            $this->errorCode=self::ERROR_PASSWORD_INVALID;
        else
        {
            $this->_id=$user->ID_USER;
            //$this->setState('lastLoginTime', $user->lastLoginTime);
            $this->setState('USERNAME', $user->USERNAME);
            //$this->setState('ID_USER',$user->ID_USER);
            //$this->setState('NIP',$user->NIP);
            $this->setState('LEVEL',$user->LEVEL);
            $this->setState('NIP_USER',$user->NIP_USER);
            $this->setState('NAMA_USER',$user->NAMA_USER);
            $this->errorCode=self::ERROR_NONE;
        }
        return !$this->errorCode;
    }
 
    public function getId()
    {
        return $this->_id;
    }
}


<?php

namespace AppBundle;

use Qwerty/MyClass;
use Azerty/MyOtherClass;
use Azerty/UselessClass;

class MyClass
{

    private $_myPrivateProperty = [];
    $publicProperty = $otherPublicProperty = null;

    function myFunction( $arg1,$arg2 ) {

        $myVar = 'azerty';

        if ($myVar == 'swaerty') $myOtherVar = 'test';

        if($myVar == true)
        {
            $myVar = 'Yo' . 'Yo';
        }else
        {
            $myVar = 'Oy';
        }

        $myClass = new MyClass();
        $myOtherClass = new MyOtherClass();

        $this->otherFunction();

    }

    private function _myPrivateFunction() {
    }

}
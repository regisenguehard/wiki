<?php

namespace AppBundle;

use Azerty/MyOtherClass;
use Qwerty/MyClass;

class MyClass
{
    private $myPrivateProperty = [];
    public $publicProperty = null;
    public $otherPublicProperty = null;

    public function myFunction($arg1, $arg2)
    {
        $myVar = 'azerty';

        if ($myVar == 'swaerty') {
            $myOtherVar = 'test';
        }

        if ($myVar == true) {
            $myVar = 'Yo'.'Yo';
        } else {
            $myVar = 'Oy';
        }

        $this->otherFunction();
    }

    private function myPrivateFunction()
    {
    }
}

<?php

require_once 'vendor/autoload.php';

use mrcnpdlk\Teryt\Client;
use mrcnpdlk\Teryt\NativeApi;
use mrcnpdlk\Teryt\Config;

use heichenko\Terit\HelloWorld;

HelloWorld::sayHi();

$oConfig = new Config([
//    'logger'       => $oInstanceLogger,
//    'cache'        => $oInstanceCacheFiles,
//    'username'     => 'my_login',
//    'password'     => 'my_password',
//    'isProduction' => true,
]);
$oNativeApi = NativeApi::create($oConfig);

var_dump($oNativeApi->CzyZalogowany());
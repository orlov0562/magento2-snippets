<?php
use Magento\Framework\App\Area;

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
ini_set('memory_limit', '4G');
error_reporting(E_ALL);

require_once 'app/bootstrap.php';

$bootstrap = \Magento\Framework\App\Bootstrap::create(BP, $_SERVER);
$objectManager = $bootstrap->getObjectManager();

$state = $objectManager->get('\Magento\Framework\App\State');
$state->setAreaCode(Area::AREA_GLOBAL);

//$model = $objectManager->create(\Company\Module\Model\Class::class);
//$results = $model->method();
//
//$modelReflection = new ReflectionObject($model);
//$method = $modelReflection->getMethod('protectedMethod');
//$method->setAccessible(true);
//
//$methodProperty = $modelReflection->getProperty('protectedProperty');
//$methodProperty->setAccessible(true);
//$methodProperty->setValue($model, new class(){
//    public function __call($name, $arguments){
//        echo 'Model :: called method "'.$name.'"'.PHP_EOL;
//    }
//    public function generate(){
//        echo 'Model :: generate()'.PHP_EOL;
//        return new class {
//            public function __call($name, $arguments)
//            {
//                echo sprintf('SubClass :: called method "%s"', $name).PHP_EOL;
//            }
//            public function getBody(){
//                echo '- result :: getBody()'.PHP_EOL;
//                return json_encode(['token' => 'fake-token']);
//            }
//        };
//    }
//});
//
//$results = $method->invoke($model, $param1);

echo PHP_EOL;
exit(0);

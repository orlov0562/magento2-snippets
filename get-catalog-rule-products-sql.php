<?php

use Magento\Framework\App\Area;

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
ini_set('memory_limit', '4G');
error_reporting(E_ALL);

require 'app/bootstrap.php';

$bootstrap = \Magento\Framework\App\Bootstrap::create(BP, $_SERVER);
$objectManager = $bootstrap->getObjectManager();
$state = $objectManager->get('\Magento\Framework\App\State');
$state->setAreaCode(Area::AREA_CRONTAB);

$catalogRuleId = 561; // Admin > Marketing > Promotinons > Catalog Price Rule

$catalogRuleRepository = $objectManager->get(\Magento\CatalogRule\Api\CatalogRuleRepositoryInterface::class);
/** @var \Magento\CatalogRule\Model\Rule $catalogRule */
$catalogRule = $catalogRuleRepository->get($catalogRuleId);

if (!$catalogRule) {
    die(sprintf('Catalog Rule %d not found', $catalogRuleId).PHP_EOL);
}

$catalogRuleReflection = new ReflectionClass($catalogRule);
$resourceIteratorProp = $catalogRuleReflection->getProperty('_resourceIterator');
$resourceIteratorProp->setAccessible(true);
$resourceIteratorProp->setValue($catalogRule, new class(){
    public function __call($name, $arguments){
        echo sprintf('resourceIterator :: called method "%s"', $name).PHP_EOL;
    }
    public function walk($query, array $callbacks, array $args = [], $connection = null){
        throw new class('Query wrapper', 0, null, $query) extends \Exception {
            public $query;
            public function __construct($message='', $code=0, \Throwable $previous=null, $query = null) {
                $this->query = $query;
                parent::__construct($message, $code, $previous);
            }
        };
        return $this;
    }
});

/** @var \Magento\Framework\DB\Select|null $query */
$query = null;

try {
    $catalogRule->getMatchingProductIds();
} catch(\Throwable $th) {
    if (property_exists($th, 'query')) {
        $query = $th->query;
    }
}

if ($query) {
    echo $query->__toString().PHP_EOL;
}

// Pay attention that later the products from this query filtered here
// vendor/magento/module-catalog-rule/Model/Rule.php [method: callbackValidateProduct]                
//   vendor/magento/module-rule/Model/Condition/Combine.php [method: validate]
//     vendor/magento/module-rule/Model/Condition/Combine.php [method: _isValid]
//       vendor/magento/module-catalog-rule/Model/Rule/Condition/Product.php [method: validate]
//         vendor/magento/module-rule/Model/Condition/Product/AbstractProduct.php [method: validate]
//           vendor/magento/module-catalog/Model/ProductCategoryList.php [getCategoryIds($productId)]
//             vendor/magento/module-rule/Model/Condition/AbstractCondition.php [method: validateAttribute]
//
// Then the products that were not pass validation removed here
// vendor/magento/module-catalog-rule-configurable/Plugin/CatalogRule/Model/Rule/ConfigurableProductHandler.php [method: afterGetMatchingProductIds]

$debug = 1;

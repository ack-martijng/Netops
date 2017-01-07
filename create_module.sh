#!/binbash
#
#
mkdir -p module/$1/config module/$1/src/Controller module/$1/src/Form module/$1/src/Model module/$1/view/$1/$1

echo "" > module/$1/src/Module.php

echo "namespace $1;" >> module/$1/src/Module.php
echo "" >> module/$1/src/Module.php
echo "use Zend\ModuleManager\Feature\ConfigProviderInterface;" >> module/$1/src/Module.php
echo "" >> module/$1/src/Module.php
echo "class Module implements ConfigProviderInterface" >> module/$1/src/Module.php
echo "{" >> module/$1/src/Module.php
    echo "public function getConfig()" >> module/$1/src/Module.php
    echo "{" >> module/$1/src/Module.php
        echo "return include __DIR__ . '/../config/module.config.php';" >> module/$1/src/Module.php
    echo "}" >> module/$1/src/Module.php
echo "} " >> module/$1/src/Module.php

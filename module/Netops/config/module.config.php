<?php

namespace Netops;

use Zend\Router\Http\Segment;

return [
    'router' => [
        'routes' => [
            'netops' => [
                'type'    => Segment::class,
                'options' => [
                    'route' => '/netops[/:action[/:id]]',
                    'constraints' => [
                        'action' => '[a-zA-Z][a-zA-Z0-9_-]*',
                        'id'     => '[0-9]+',
                    ],
                    'defaults' => [
                        'controller' => Controller\NetopsController::class,
                        'action'     => 'index',
                    ],
                ],
            ],
        ],
    ],


    'view_manager' => [
        'template_path_stack' => [
            'album' => __DIR__ . '/../view',
        ],
    ],
];

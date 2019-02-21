<?php
/**
 * Created by PhpStorm.
 * User: gamalan
 * Date: 07/10/16
 * Time: 10:24
 */

namespace Application\Router;

use Phalcon\Mvc\Router\Group;

class MainRouter extends Group
{
    public function initialize()
    {
        $this->setPaths([
            'namespaces' => 'Application\\Controllers',
            'controller'=>'index'
        ]);

        $this->add(
            '/',
            [
                'action' => 'read',
            ]
        );

        $this->add(
            '/form',
            [

                'action'     => 'form',
            ]
        );

        $this->add(
            '/create',
            [
                'action'     => 'create',
            ]
        );

        $this->add(
            '/read',
            [
                'action'     => 'read',
            ]
        );

        $this->add(
            '/updateform/{custid}',
            [
                'action'     => 'updateform',
            ]
        );

        $this->add(
            '/update',
            [
                'action'     => 'update',
            ]
        );

        $this->add(
            '/delete/{custid}',
            [
                'action'     => 'delete',
            ]
        );
    }
}
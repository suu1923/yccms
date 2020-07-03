<?php
/**
 * Created by PhpStorm.
 * User: Suu
 * Date: 2020/7/1
 * Time: 14:59
 */

namespace app\portal\controller;


use cmf\controller\HomeBaseController;

class CertController extends HomeBaseController
{

    public function index(){
        echo "111";
        return $this->fetch("index");
    }
}
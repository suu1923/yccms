<?php
/**
 * Created by PhpStorm.
 * User: Suu
 * Date: 2020/7/1
 * Time: 14:59
 */

namespace app\portal\controller;


use app\admin\model\CertClassModel;
use app\portal\model\CertModel;
use app\portal\model\CertStructureModel;
use cmf\controller\HomeBaseController;

class CertController extends HomeBaseController
{

    public function index(){

        // 获取到model 为 1,2,3的查询的key及value

        $class = (new CertClassModel())->select();

        $model = $this->request->param('model') ? $this->request->param('model') : $class[0]['id'];

        $where['model'] = $model;
        $where['must'] = 1;

        $certStruct = (new CertStructureModel())->where($where)->field("key,value,model")->select();


//        $result = [];
//        foreach ($certStruct->toArray() as $item =>$value){
//            $result[$value['model']][] = $value;
//        }


//        dump($certStruct->toArray());
        $this->assign('model',$model);
        $this->assign('class',$class);
        $this->assign("struct",$certStruct);

        return $this->fetch("index");
    }

    // 查询数据
    public function query(){
        $param = $this->request->except("Rewrite");

        if(empty($param['model'])){
            $this->error("内部错误");
        };
        // 查询
        $where['show'] = 1;
        $where['model'] = $param['model'];
        $certStruct = (new CertStructureModel())->where($where)->field("key,value")->select();

        $queryKey = [];
        $queryValue = [];
        foreach ($certStruct->toArray() as $item =>$value){
            array_push($queryKey,$value['key']);
            array_push($queryValue,$value['value']);
        }

        $certData = (new CertModel())->where($param)->field(implode(",",$queryKey))->find();

        if (!$certData){
            $name = $param['attr_1'];
            $resArr = "抱歉！未查询到{$name}的信息，请确认填写信息是否正确！";
            $this->assign("no_res",true);
            $this->assign("data",$resArr);

        }else{
            $keyArr = array_combine($queryKey,$queryValue);
            $resArr = array_merge_recursive($keyArr,$certData->toArray());
            $resArr  =array_values($resArr);
            $this->assign("no_res",false);
            $this->assign("data",$resArr);

        }
        return $this->fetch("query");
    }
}
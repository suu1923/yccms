<?php
/**
 * Created by PhpStorm.
 * User: Suu
 * Date: 2020/7/1
 * Time: 14:59
 */

namespace app\portal\controller;


use app\portal\model\CertModel;
use app\portal\model\CertStructureModel;
use cmf\controller\HomeBaseController;

class CertController extends HomeBaseController
{

    public function index(){

        // 获取到model 为 1,2,3的查询的key及value

        $where['must'] = 1;

        $certStruct = (new CertStructureModel())->where($where)->field("key,value,model")->select();

        $result = [];
        foreach ($certStruct->toArray() as $item =>$value){
            $result[$value['model']][] = $value;
        }

        $this->assign("struct",$result);

        return $this->fetch("index");
    }

    // 查询数据
    public function query(){
        $param = $this->request->param();

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

//        技术职称
//        船舶监理人员
//        船舶监理单位
        $certData = (new CertModel())->where($param)->field(implode(",",$queryKey))->find();

        if (!$certData){
            $name = $param['attr_1'];
            $resArr = "抱歉！未查询到{$name}的信息，请确认填写信息是否正确！";
            $noRes = true;
            $this->assign("no_res",$noRes);
        }else{
            $keyArr = array_combine($queryKey,$queryValue);
            $resArr = array_merge_recursive($keyArr,$certData->toArray());
            $resArr  =array_values($resArr);
        }

        $this->assign("data",$resArr);

        return $this->fetch("query");
    }
}
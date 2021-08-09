<?php
/**
 * Created by PhpStorm.
 * User: Suu
 * Date: 2021/8/9
 * Time: 10:13
 */

namespace app\admin\controller;


use app\admin\model\CertClassModel;
use app\admin\model\CertModel;
use app\admin\model\CertStructureModel;
use cmf\controller\AdminBaseController;
use think\Db;
use think\Exception;
use think\Request;

class CertClassController extends AdminBaseController
{


    /**
     * @param Request $request
     * @return mixed|void
     */
    public function index(){

        $certClassModel = new CertClassModel();

        $res = $certClassModel->select();

        $this->assign('res',$res);

        return $this->fetch('cert_class/index');

    }


    public function add(){
        if ($this->request->isPost()){
            $name = $this->request->post('name');
            $certClassModel = new CertClassModel();
            $exists = $certClassModel->where('name',$name)->find();
            if ($exists!=null){
                return $this->error("证书名已存在");
            }
            $data['name'] = $name;

            $id = $certClassModel->insertGetId($data);

            $structureArr = [];
            for ($i = 0;$i<=20;$i++){
                $item = [
                    "model" => $id,
                    "key"   => "attr_".$i,
                    "value" => "",
                    "must"  => 0,
                    "show"  => 0
                ];
                array_push($structureArr,$item);
            }

            $certStructureModel = new CertStructureModel();
            $certStructureModel->saveAll($structureArr);

            return $this->success('添加成功');
        }else{
            return $this->fetch();
        }

    }


    public function delete($id){
        $id = $this->request->param('id');
        // 验证数据表中有没有数据
        $exists = (new CertModel())->where('model',$id)->count();
        if ($exists>0){
            return $this->error('该证书下还有数据，不可删除');
        }
        // 删除，删除本表和结构表
        Db::startTrans();
        try{
            // 先删除结构表

            (new CertStructureModel())->where('model',$id)->delete();

            (new CertClassModel())->where('id',$id)->delete();

            Db::commit();
            return $this->success('删除成功');
        }catch (Exception $exception){
            Db::rollback();
            $this->error('删除失败'.$exception);
        }
    }

}
<?php
/**
 * Created by PhpStorm.
 * User: Suu
 * Date: 2020/7/2
 * Time: 10:09
 */

namespace app\admin\controller;


use app\admin\model\CertModel;
use app\admin\model\CertStructureModel;
use cmf\controller\AdminBaseController;
use think\Exception;
use think\Loader;
use think\Request;

/**
 * Class CertController 证书管理
 * @package app\admin\controller
 */
class CertController extends AdminBaseController
{

    /**
     * 普通证书查询
     */
    public function index(Request $request){

        $model = 1;
        $search = false;

        // 查找到搜索条件的字段
        $certStruct = new CertStructureModel();
        $certWhere['model'] = $model;
        $certWhere['value'] = ['neq',''];
        $certWhere['must']  = 1;
        $keyData = $certStruct->where($certWhere)->field("key,value")->select();


        if ($request->param("search/a")){
            $search = true;
            $searchVal = $request->param("search/a");
        }

        $keys = [];
        $values = [];
        foreach ($keyData as $key => $value) {
            array_push($keys, $value['key']);
            array_push($values, $value['value']);
        }
        if ($keys){

            $field = "id,".implode(",",$keys);
            // 找到对应的数据
            $cert = new CertModel();
            $where['model'] = $model;

            // 添加查询数据
            if ($search == true){
                foreach ($searchVal as $item =>$value){
                    $where[$item] = $value;
                }
            }
            $res = $cert->where($where)->field($field)->select();
        }else{
            $res = [];
        }

        $this->assign("keys",$keys);
        $this->assign("values",$values);
        $this->assign("struct",$keyData);
        $this->assign("res",$res);
        $this->assign("model",$model);
        return $this->fetch('cert/index');
        
    }


    /**
     * 监理数据-个人
     */
    public function index2(Request $request){
        $model = 2;
        $search = false;

               // 查找到搜索条件的字段
        $certStruct = new CertStructureModel();
        $certWhere['model'] = $model;
        $certWhere['value'] = ['neq',''];
        $certWhere['must']  = 1;
        $keyData = $certStruct->where($certWhere)->field("key,value")->select();

        if ($request->param("search/a")){
            $search = true;
            $searchVal = $request->param("search/a");
        }

        $keys = [];
        $values = [];
        foreach ($keyData as $key => $value) {
            array_push($keys, $value['key']);
            array_push($values, $value['value']);
        }
        if ($keys){

            $field = "id,".implode(",",$keys);
            // 找到对应的数据
            $cert = new CertModel();
            $where['model'] = $model;
            // 添加查询数据
            if ($search == true){
                foreach ($searchVal as $item =>$value){
                    $where[$item] = $value;
                }
            }
            $res = $cert->where($where)->field($field)->select();
        }else{
            $res = [];
        }


        $this->assign("keys",$keys);
        $this->assign("values",$values);

        $this->assign("res",$res);
        $this->assign("struct",$keyData);

        $this->assign("model",$model);
        return $this->fetch('cert/index');
    }


    /**
     * 监理数据-公司
     */
    public function index3(Request $request){
        $model = 3;
        $search = false;

        // 查找到搜索条件的字段
        $certStruct = new CertStructureModel();
        $certWhere['model'] = $model;
        $certWhere['value'] = ['neq',''];
        $certWhere['must']  = 1;
        $keyData = $certStruct->where($certWhere)->field("key,value")->select();

        if ($request->param("search/a")){
            $search = true;
            $searchVal = $request->param("search/a");
        }

        $keys = [];
        $values = [];
        foreach ($keyData as $key => $value) {
            array_push($keys, $value['key']);
            array_push($values, $value['value']);
        }
        if ($keys){

            $field = "id,".implode(",",$keys);
            // 找到对应的数据
            $cert = new CertModel();
            $where['model'] = $model;
            // 添加查询数据
            if ($search == true){
                foreach ($searchVal as $item =>$value){
                    $where[$item] = $value;
                }
            }
            $res = $cert->where($where)->field($field)->select();
        }else{
            $res = [];
        }


        $this->assign("keys",$keys);
        $this->assign("values",$values);

        $this->assign("res",$res);
        $this->assign("struct",$keyData);

        $this->assign("model",$model);
        return $this->fetch('cert/index');
    }


    /**
     * 批量上传
     * @param $model 分类ID
     * @throws \PHPExcel_Reader_Exception
     */
    public function add($model){
        if (empty($model)) $this->error("模型错误");
        $model = $this->request->param('model');
        if ($this->request->isPost()){
            $excel_name = $this->request->param('file_name');
            $excel_url = $this->request->param('file_url');
            if(!empty($excel_name) && !empty($excel_url)){
                Loader::import('PHPExcel.Classes.PHPExcel');
                Loader::import('PHPExcel.Classes.PHPExcel.IOFactory.PHPExcel_IOFactory');
                Loader::import('PHPExcel.Classes.PHPExcel.Reader.Excel5');
                Loader::import('PHPExcel.Classes.PHPExcel.Reader.Excel2007');
                $filename = ROOT_PATH.'public/upload/'.$excel_url;  //文件路径
                $extension = cmf_get_file_extension($excel_url);    //文件扩展名
                if($extension == 'xlsx'){
//                    $objReader =\PHPExcel_IOFactory::createReader('Excel2007');
                    $objReader = new \PHPExcel_Reader_Excel2007();
                    $objPHPExcel = $objReader->load($filename);  //加载文件内容,编码utf-8
                }else if($extension == 'xls'){
//                    $objReader =\PHPExcel_IOFactory::createReader('Excel5');
                    $objReader = new \PHPExcel_Reader_Excel5();
                    $objPHPExcel = $objReader->load($filename);  //加载文件内容,编码utf-8
                }else{
                    // 删除文件
                    @unlink($filename);
                    $this->error('请上传Excel格式的文件！','');
                }

                $excel_array=$objPHPExcel->getsheet(0)->toArray();   //转换为数组格式
                array_shift($excel_array);  // 删除第一个数组(标题);

                if (!$excel_array || count($excel_array) == 0){
                    $this->error("Excel文件为空","");
                }

                $where['model'] = $model;
                $where['value'] = ['neq',''];
                $certStruct = new CertStructureModel();
                $kname = $certStruct->where($where)->column("key");


                foreach ($excel_array as $item => $value){
                    $excel_array[$item] = array_combine($kname,$value);
                    $excel_array[$item]['model'] = $model;
                    $excel_array[$item]['create_time'] = time();
                }

                $cert = new CertModel();
                $res = $cert->insertAll($excel_array);

                if ($res){
                    $this->success("导入数据成功");
                }else{
                    $this->error("导入数据失败");
                }

            }else{
                $this->error('文件导入失败!','');
            }
        }else{

            $this->assign("model",$model);

            return $this->fetch();
        }
    }

    public function select(){
        $model = $this->request->param("model");
        if (empty($model)) $this->error("模型错误");
        if($this->request->isPost()){
            // Todo
            $param = $this->request->post();

            $certStructure = new CertStructureModel();
            $res = $certStructure->isUpdate(true)->save($param);

            if ($res) {
                $this->success("保存成功");
            }else{
                $this->error("保存失败");
            }

        }else{
            // 读取创建出来一个结构
            /**
             * 0:{
             *    "name" : "attr_0",
             *    "value" : "value",
             *    "must"   : 1,
             *    "show"   : 1
             * }
             */
            $certStructure = new CertStructureModel();
            $data = $certStructure->where(["model"=>$model])->field("id,key,value,must,show")->select();
            if (count($data) == 0){
                $structureArr = [];
                for ($i = 0;$i<=20;$i++){
                    $item = [
                        "model" => $model,
                        "key"   => "attr_".$i,
                        "value" => "",
                        "must"  => 0,
                        "show"  => 0
                    ];
                    array_push($structureArr,$item);
                }
                $certStructure->saveAll($structureArr);
                $res = $certStructure->where(["model"=>$model])->field("id,key,value,must,show")->select();
            }else{
                $res = $data;
            }


            $this->assign("struct",$res);
            $this->assign("model",$model);
            return $this->fetch();
        }

    }

    // 查看一个的全部信息
    public function look(){
        $id = $this->request->param("id");

        // 查询Cert表
        $cert = (new CertModel())->where(["id"=>$id])->find();

        $where['model'] = $cert['model'];
        $where['value'] = ['neq',''];

        $certStrucrure = (new CertStructureModel())->where($where)->select();

        $this->assign("cert",$cert);
        $this->assign("struct",$certStrucrure);

        return $this->fetch();

    }


    // 删除某一个
    public function delete(){
        $id = $this->request->param("id");
        if (empty($id)) $this->error("ID错误");
        $res = (new CertModel())->where(["id"=>$id])->delete();
        if ($res){
            $this->success("删除成功！", url("cert/index"));
        }else{
            $this->success("删除失败！", url("cert/index"));

        }
    }

    // 下载Excel模板
    public function download_temp(){
        /**
         * 根据 attr 所展示  遍历 value不为空的项
         */
        $model = $this->request->param("model");

        if (empty($model)) $this->error("模型错误");

        //所有数据
        $data = (new CertStructureModel())->where(["model"=>$model,"value"=>array('neq','')])->column("value");

        // 获取
        $letter = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"];

        $letterData = array_slice($letter,0,count($data));


        try{
            Loader::import('PHPExcel.Classes.PHPExcel');
            Loader::import('PHPExcel.Classes.PHPExcel.IOFactory.PHPExcel_IOFactory');
            Loader::import('PHPExcel.Classes.PHPExcel.Reader.Excel5');
            $objExcel = new \PHPExcel();

            $objExcel->getDefaultStyle()->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
            $objExcel->getDefaultStyle()->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);
            $sheet = $objExcel->getActiveSheet();


            for($i=0;$i<count($letterData);$i++){
                $sheet->getColumnDimension($letterData[$i])->setWidth(strlen($data[$i])*1.2);
                $sheet->getStyle($letterData[$i]."1")->getFont()->setSize(11);
                $sheet->getStyle($letterData[$i]."1")->getFont()->setBold(true);
                $sheet->setCellValue($letterData[$i]."1",$data[$i]);
            }
            $filepath = ROOT_PATH.'public/upload/create_excel';  //文件路径
            if (!file_exists($filepath)){
                mkdir($filepath);
                chmod($filepath,0777);
            }
            (new \PHPExcel_Writer_Excel5($objExcel))->save($filepath."/Model{$model}.xls");

            $filename = "Model{$model}.xls";
            $content = file_get_contents($filepath."/".$filename);

            $filesize = filesize($filepath."/".$filename);

            header("Content-type: application/octet-stream;charset=utf-8");
            header("Accept-Ranges: bytes");
            header("Accept-Length: $filesize");
            header("Content-Disposition: attachment; filename=".$filename);

            exit($content);

        }catch (Exception $exception){
            $this->error($exception->getMessage());
        } catch (\PHPExcel_Exception $e) {
        }


    }

    // 删除全部
    public function delete_all(){
        $model = $this->request->param("model");
        if (empty($model)) $this->error("Model错误");
        $res = (new CertModel())->where(["model"=>$model])->delete();
        if ($res){
            $this->success("删除成功！", url("cert/index"));
        }else{
            $this->success("删除失败！", url("cert/index"));

        }
    }

    public function download_data(){
        /**
         * 根据 attr 所展示  遍历 value不为空的项
         */
        $model = $this->request->param("model");

        if (empty($model)) $this->error("模型错误");

        //所有数据-表头
        $data = (new CertStructureModel())->where(["model"=>$model,"value"=>array('neq','')])->column("value");

        // 获取
        $letter = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"];

        $letterData = array_slice($letter,0,count($data));

        $fieldArr = [];

        foreach ($data as $key => $value){
            array_push($fieldArr,"attr_".$key);
        }
        $field = implode(",",$fieldArr);

        // 证书数据
        $certData = (new CertModel())->where(["model"=>$model])->field($field)->select();

        if (count($certData) == 0){
            $this->error("暂时没有数据");
        }


        try{
            Loader::import('PHPExcel.Classes.PHPExcel');
            Loader::import('PHPExcel.Classes.PHPExcel.IOFactory.PHPExcel_IOFactory');
            Loader::import('PHPExcel.Classes.PHPExcel.Reader.Excel5');
            $objExcel = new \PHPExcel();

            $objExcel->getDefaultStyle()->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
            $objExcel->getDefaultStyle()->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);
            $sheet = $objExcel->getActiveSheet();

            for($i=0;$i<count($letterData);$i++){
                $sheet->getColumnDimension($letterData[$i])->setWidth(strlen($data[$i])*1.2);
                $sheet->getStyle($letterData[$i]."1")->getFont()->setSize(11);
                $sheet->getStyle($letterData[$i]."1")->getFont()->setBold(true);
                $sheet->setCellValue($letterData[$i]."1",$data[$i]);
            }

            foreach ($certData->toArray() as $key => $value) {
                for ($k = 0;$k<count($value);$k++){ // 规定有多少行
                    for($i=0;$i<count($letterData);$i++){ // 有多少列

                        $sheet->getColumnDimension($letterData[$i])->setWidth(strlen($value["attr_".$k])*1.2); // 设置A1宽度
                        $sheet->getStyle($letterData[$i].($key+2))->getFont()->setSize(11); // 设置A N字体大小
                        $sheet->setCellValue($letterData[$i].($key+2),$value["attr_".$i]); // 设置A N 数据
                    }
                }
            }

            $filepath = ROOT_PATH.'public/upload/create_excel';  //文件路径
            if (!file_exists($filepath)){
                mkdir($filepath);
                chmod($filepath,0777);
            }
            $file = $model.rand(100000,9999999).time();
            (new \PHPExcel_Writer_Excel2007($objExcel))->save($filepath."/{$file}.xls");

            $filename = "{$file}.xls";
            $content = file_get_contents($filepath."/".$filename);

            $filesize = filesize($filepath."/".$filename);

            header("Content-type: application/octet-stream;charset=utf-8");
            header("Accept-Ranges: bytes");
            header("Accept-Length: $filesize");
            header("Content-Disposition: attachment; filename=".$filename);

            exit($content);

        }catch (Exception $exception){
            $this->error($exception->getMessage());
        } catch (\PHPExcel_Exception $e) {
        }

    }

}
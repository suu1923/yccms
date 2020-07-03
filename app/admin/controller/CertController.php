<?php
/**
 * Created by PhpStorm.
 * User: Suu
 * Date: 2020/7/2
 * Time: 10:09
 */

namespace app\admin\controller;


use app\admin\model\CertModel;
use cmf\controller\AdminBaseController;
use think\Loader;

/**
 * Class CertController 证书管理
 * @package app\admin\controller
 */
class CertController extends AdminBaseController
{

    /**
     * 普通证书查询
     */
    public function index(){
        $model = 1;

        $content = hook_one("cret_index_view");

        if (!empty($content)) return $content;

        $certModel = new CertModel();

        $cert = $certModel->where(['model'=>$model])->select();

//        dump($cert);
        $this->assign("cert",$cert);
        return $this->fetch();
    }


    /**
     * 监理数据-个人
     */
    public function supervisor(){
        $model = 2;
    }


    /**
     * 监理数据-公司
     */
    public function supervisor_company(){
        $model = 3;
    }


    /**
     * 批量上传
     * @param $model 分类ID
     */
    public function add($model){
        if (empty($model)) $this->error("模型错误");
        if ($this->request->isPost()){
            $excel_name = $this->request->param('file_name');
            $excel_url = $this->request->param('file_url');
            if(!empty($excel_name) && !empty($excel_url)){
                Loader::import('PHPExcel.Classes.PHPExcel');
                Loader::import('PHPExcel.Classes.PHPExcel.IOFactory.PHPExcel_IOFactory');
                Loader::import('PHPExcel.Classes.PHPExcel.Reader.Excel5');
                $filename = ROOT_PATH.'public/upload/'.$excel_url;  //文件路径
                $extension = cmf_get_file_extension($excel_url);    //文件扩展名
                if($extension == 'xlsx'){
                    $objReader =\PHPExcel_IOFactory::createReader('Excel2007');
                    $objPHPExcel = $objReader->load($filename, $encode = 'utf-8');  //加载文件内容,编码utf-8
                }else if($extension == 'xls'){
                    $objReader =\PHPExcel_IOFactory::createReader('Excel5');
                    $objPHPExcel = $objReader->load($filename, $encode = 'utf-8');  //加载文件内容,编码utf-8
                }else{
                    // 删除文件
                    @unlink($filename);
                    $this->error('请上传Excel格式的文件！','');
                }

                $excel_array=$objPHPExcel->getsheet(0)->toArray();   //转换为数组格式
                array_shift($excel_array);  // 删除第一个数组(标题);

                $titleArr = $excel_array[0]; // 保存标题
                array_shift($excel_array);  // 删除标题

                dump($excel_array);




//                if(Db::name('user_salary')->insertAll($data)){
//                    $this->success('导入数据成功！',url('admin/Salary/index'));
//                } else {
//                    $this->error('导入数据失败!','');
//                }
            }else{
                $this->error('文件导入失败!','');
            }
        }else{
            return $this->fetch();
        }
    }

    public function show(){

    }
}
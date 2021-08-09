<?php
/**
 * Created by PhpStorm.
 * User: Suu
 * Date: 2020/7/8
 * Time: 17:36
 */
use think\Controller;
use think\Db;

// 检测是否是子分类
function checkSon($id){
    $res = $id;
    $pid = (new \app\portal\model\PortalCategoryModel())->where(["id"=>$id])->value("parent_id");
    if ($pid == 0) {
        $res = (new \app\portal\model\PortalCategoryModel())->where(["parent_id"=>$id])->column("id");
        $res = implode(",",$res);
    }
    return $res;
}

// 检测是否是父分类
function checkFat($id){
    $res = $id;
    $pid = (new \app\portal\model\PortalCategoryModel())->where(["id"=>$id])->value("parent_id");

    if ($pid != 0) {
        $res = $pid;
    }
    return $res;
}

// 获取文件大小
function get_file_size($file){
    if (!empty($file)){

    }else{
        return "获取文件大小出错";
    }
}


function getFirstArticleId($id){
    $articleid = (new \app\portal\model\PortalCategoryPostModel())->where(["category_id"=>$id])->limit(1)->field("post_id")->select();
    return $articleid;
}

function getSon($id){
    $res = (new \app\portal\model\PortalCategoryModel())->where(["parent_id"=>$id])->column("id");
    return $res ? implode(",",$res) : $id;
}
<?php
namespace plugins\topdown;
use cmf\lib\Plugin;
use think\Db;

/**
 * Created by PhpStorm.
 * User: dy
 * Date: 2019/10/23
 * Time: 16:42
 */
class TopdownPlugin extends Plugin
{
    public $info = [
        'name'        => 'Topdown',//Demo插件英文名，改成你的插件英文就行了
        'title'       => '文章上一篇下一篇',
        'description' => '文章上一篇下一篇',
        'status'      => 1,
        'author'      => 'dy',
        'version'     => '1.0',
        'demo_url'    => 'http://demo.thinkcmf.com',
        'author_url'  => 'http://www.thinkcmf.com'
    ];
    // 插件安装
    public function install()
    {
        return true;//安装成功返回true，失败false
    }

    // 插件卸载
    public function uninstall()
    {
        return true;//卸载成功返回true，失败false
    }

    public function afterContent($param)
    {
        $down = Db::name('portal_post')
            ->alias('p')
            ->field('p.*')
            ->join('portal_category_post cp','p.id = cp.post_id')
            ->where('cp.category_id',$param['category_id'])
            ->where('p.id','>',$param['object_id'])
            ->where('p.post_status',1)
            ->where('p.delete_time',0)
            ->order('published_time desc')
            ->find();
        $top = Db::name('portal_post')
            ->alias('p')
            ->field('p.*')
            ->join('portal_category_post cp','p.id = cp.post_id')
            ->where('cp.category_id',$param['category_id'])
            ->where('p.id','<',$param['object_id'])
            ->where('p.post_status',1)
            ->where('p.delete_time',0)
            ->order('published_time desc')
            ->find();
        $this->assign('top',$top);
        $this->assign('down',$down);
        $this->assign('cid',$param['category_id']);
        echo $this->fetch('widget');
    }
}
<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/3/18
 * Time: 18:23
 */

namespace plugins\post_analysis;

use app\portal\model\PortalPostModel;
use cmf\lib\Plugin;

class PostAnalysisPlugin extends Plugin
{
    public $info     = [
        'name'        => 'PostAnalysis',
        'title'       => '文章数据分析',
        'description' => '文章数据分析,修复因为没有数据造成的数组索引未定义问题',
        'status'      => 1,
        'author'      => 'Byk',
        'version'     => '1.0.1'
    ];
    public $hasAdmin = 0;//插件是否有后台管理界面

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

    public function adminDashboard()
    {
        $today           = strtotime(date('Y-m-d'));
        $portalPostModel = new PortalPostModel();
        $where           = [
            'post.post_status'    => 1,
            'post.post_type'      => 1,
            'post.delete_time'    => 0,
            'post.published_time' => [['>', 0], ['<', time()]]
        ];
        $join            = [
            ['__PORTAL_CATEGORY_POST__ category_post', 'post.id = category_post.post_id'],
            ['__PORTAL_CATEGORY__ category', 'category.id = category_post.category_id']
        ];
        //总发布文章数量
        $totalCount = $portalPostModel->alias('post')->where($where)->count('id');
        //当天发布文章数量
        $todayCount = $portalPostModel->alias('post')->where(array_merge($where, ['post.published_time' => [['>=', $today], ['<=', time()]]]))->count('id');
        //未发布数量
        $noPublishedCount = $portalPostModel->alias('post')->where(array_merge($where, ['post.post_status' => 0]))->count('id');
        //未发布文章
        $noPublishedPosts = $portalPostModel->alias('post')->field('post.id,post.post_title,post.create_time')->where(array_merge($where, ['post.post_status' => 0]))->limit(5)->select()->toArray();
        //浏览量
        $totalViewCount = $portalPostModel->alias('post')->where($where)->sum('post_hits');
        //文章浏览量Top10
        $postViewCount = $portalPostModel->alias('post')->field('id,post_title,sum(post_hits) as view_count')->where($where)->group('id')->order('view_count desc')->limit(5)->select()->toArray();
        //栏目文章数量前10条
        $categoryCount = $portalPostModel->alias('post')->join($join)->field('count(post.id) as count,category_post.category_id,category.name')->where($where)->group('category_post.category_id')->order('count desc')->limit(10)->select()->toArray();
        $map           = ['category' => [], 'data' => []];
        foreach ($categoryCount as $value) {
            $map['category'][] = $value['name'];
            $map['data'][]     = $value['count'];
        }
        $data = [
            'total_count'        => $totalCount,
            'today_count'        => $todayCount,
            'category_count'     => $categoryCount,
            'map_data'           => $map,
            'no_published_count' => $noPublishedCount,
            'total_view_count'   => $totalViewCount,
            'post_view_count'    => $postViewCount,
            'no_published_posts' => $noPublishedPosts
        ];
        $this->assign($data);

        return [
            'width'  => 12,
            'view'   => $this->fetch('widget'),
            'plugin' => 'PostAnalysis'
        ];
    }
}
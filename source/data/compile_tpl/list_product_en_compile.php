<!Doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="<?php echo cateinfo('cate_info_seo');?>">
<meta name="keywords" content="<?php echo cateinfo('cate_key_seo');?>">
<title><?php echo cateinfo('cate_title_seo');?>_<?php echo webinfo('web_name');?></title>
<link rel="stylesheet" type="text/css" href="<?php cmspath('template');?>/style/common.css">
<script type="text/javascript" src="<?php cmspath('template');?>/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="<?php cmspath('template');?>/js/common.js"></script>
</head>
<body>
<?php $this->display('head',1,1);?>

<?php $this->display('inner_banner',1,1);?>

<div class="wrap mb15">
    <div class="main col2 group">
        
        <div class="leftBar">
            <!-- 产品栏目 -->
             <div class="leftbox mb8">
                <div class="lb_head"><img src="<?php cmspath('template');?>/images/lhead_002.gif"></div>
                <div class="lb_body">
                    <?php $tree=get_tpl_list_nav(4,1);?>
                    <?php if($tree){?>
                        <ul class="lb_sbunav">
                            <?php 
 $fun_return=$tree;if(isset($fun_return)&&is_array($fun_return)){
foreach($fun_return as $v){?>
                            <li><span></span><a href="<?php echo $v['url'];?>"  class="<?php echo $v['class'];?>" <?php echo $v['target'];?> title="<?php echo $v['cate_name'];?>"><?php echo $v['cate_name'];?></a></li>
                            <?php 
}
}?>
                        </ul>
                    <?php }?>
                </div>
            </div>
            <!-- 联系我们 -->
            <div class="leftbox">
                <div class="lb_head"><img src="<?php cmspath('template');?>/images/lhead_001.gif"></div>
                <div class="lb_body">
                    <?php echo get_block_content('en_contact');?>
                </div>
            </div>
        </div>
        <div class="ibox">
            <div class="ibox_top">
                <div class="guide fr">
                    <span>Position：</span><?php position(); ?>
                </div>
                <b class="ibox_home_title blue_ico"><?php echo get_cate(out_id());?></b>
            </div>
            <div class="ibox_body min600">
                <div class="ibox_inner group">
                    <ul class="pro_list group">
                        <?php 
 $fun_return=list_article();if(isset($fun_return)&&is_array($fun_return)){
foreach($fun_return as $v){?>
                        <li>
                            <!-- 图片：148*118 -->
                            <div class="img"><a href="<?php echo $v['url'];?>" <?php echo $v['target'];?>><img src="<?php echo $v['thumb_pic'];?>" width="148" height="118" alt="<?php echo $v['title'];?>"></a></div>
                            <div class="title">
                                <a href="<?php echo $v['url'];?>" <?php echo $v['target'];?>><?php echo $v['title'];?></a>
                            </div>
                        </li>
                        <?php 
}
}?>
                    </ul>
                    <div class="page_fy">
                    <?php echo list_page();?>
                    </div> 
                </div>
            </div>
        </div>

    </div>
</div>

<?php $this->display('foot',1,1);?>
</body>
</html>
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
                    <?php $tree=get_tpl_list_nav(3,1);?>
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
                    <?php echo get_block_content('contactus');?>
                </div>
            </div>
        </div>
        <div class="ibox">
            <div class="ibox_top">
                <div class="guide fr">
                    <span>当前位置：</span><?php position(); ?>
                </div>
                <b class="ibox_home_title blue_ico"><?php echo get_cate(out_id());?></b>
            </div>
            <div class="ibox_body min600">
                <div class="ibox_inner group">
                    
                    
                    
                    
                    <!-- 
                        <ul class="lb_sbunav">
                            <?php 
 $fun_return=$tree;if(isset($fun_return)&&is_array($fun_return)){
foreach($fun_return as $v){?>
                            <li><span></span><a href="<?php echo $v['url'];?>"  class="<?php echo $v['class'];?>" <?php echo $v['target'];?> title="<?php echo $v['cate_name'];?>"><?php echo $v['cate_name'];?></a></li>
                            <?php 
}
}?>
                         
                        </ul> -->
                    
                    <?php $tree=get_tpl_list_nav2(out_id(),1,1);?>

                    <?php if($tree ){?>
                    <table class="pro_table">
                        <?php 
 $fun_return=$tree;if(isset($fun_return)&&is_array($fun_return)){
foreach($fun_return as $v){?>
                        
                      
                        <?php if(is_int(($v['autoindex']+2)/3) == 1){?>
                        <tr>
                        <?php }?>
                            <td>
                                <div class="proboxs">
                                    <!-- 图片：167*119 -->
                                    <div class="img">
                                        <a href="<?php echo $v['url'];?>"><img src="<?php echo $v['cate_pic1'];?>" width="167" height="119"></a>
                                        <a href="<?php echo $v['url'];?>" class="title"><?php echo $v['cate_name'];?></a>
                                        <div class="fiter_black"></div>
                                    </div>
                                    <ul class="probox_list">
                                        <?php 
 $fun_return=$v['child'];if(isset($fun_return)&&is_array($fun_return)){
foreach($fun_return as $v){?>
                                        <li><a href="<?php echo $v['url'];?>"><?php echo $v['cate_name'];?></a></li>
                                        <?php 
}
}?>
                                    </ul>
                                </div>
                            </td>
                        
                      
                        
                        <?php 
}
}?>
                    </table>
                    <?php }?>
                  
                        
                </div>
            </div>
        </div>

    </div>
</div>

<?php $this->display('foot',1,1);?>
</body>
</html>
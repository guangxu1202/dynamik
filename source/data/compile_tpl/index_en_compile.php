<!Doctype html>
<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="<?php echo webinfo('web_description');?>">
<meta name="keywords" content="<?php echo webinfo('web_keywords');?>">
<title><?php if(webinfo('web_index_name')){?><?php echo webinfo('web_index_name');?><?php }else{?><?php echo webinfo('web_name');?><?php }?></title>

<link rel="stylesheet" type="text/css" href="<?php cmspath('template');?>/style/common.css">
<script type="text/javascript" src="<?php cmspath('template');?>/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="<?php cmspath('template');?>/js/common.js"></script>

</head>
<body>
<?php $this->display('head',1,1);?>


<div class="mtsBanner mb15" id="mtsBanner">
    <div class="wrap">
        <ul class="bannerWrap">
            <li><img src="<?php cmspath('template');?>/images/banner01.jpg"></li>
            <li><img src="<?php cmspath('template');?>/images/banner02.jpg"></li>
        
        </ul>
    </div>
</div>
<script type="text/javascript" src="<?php cmspath('template');?>/js/skIndex.js"></script>

<div class="wrap mb15">
    <div class="main col2 group">
        <div class="leftBar">
            <!-- 产品栏目 -->
            <div class="probox">
            <?php $tree=get_tpl_list_nav(4);?>
                <?php if($tree){?>
                    <ul>
                        <?php 
 $fun_return=$tree;if(isset($fun_return)&&is_array($fun_return)){
foreach($fun_return as $v){?>
                        <li><a href="<?php echo $v['url'];?>" <?php echo $v['target'];?> title="<?php echo $v['cate_name'];?>"><?php echo $v['cate_name'];?></a></li>
                        <?php 
}
}?>
                    </ul>
                <?php }?>

                <!-- <ul>
                    <li><a href="#">REXROTH德国力士乐</a></li>
                    <li><a href="#">ATOS意大利阿托斯</a></li>
                    <li><a href="#">AEC德国</a></li>
                    <li><a href="#">AVENTICS瑞典（原BOSCH）</a></li>
                    <li><a href="#">液压软管\接头</a></li>
                </ul> -->
            </div>
            <!-- 联系我们 -->
            <div class="leftbox">
                <div class="lb_head"><img src="<?php cmspath('template');?>/images/lhead_001.gif"></div>
                <div class="lb_body">
                    <?php echo get_block_content('en_contact');?>

                </div>


            </div>
        </div>
        <div class="mainContent">
            <!-- 业务组成 -->
            <div class="ibox mb15">
                <div class="ibox_top">
                    <!-- <a href="#" class="more">more</a> -->
                    <b class="ibox_home_title">Business Component</b>
                </div>
                <div class="ibox_body">
                    <ul class="home_pro">
                        <li><a href="<?php cmspath('alone');?>/alone.php?id=56"><img src="<?php cmspath('template');?>/images/home_col01.jpg"></a></li>
                        <li><a href="<?php cmspath('alone');?>/alone.php?id=57"><img src="<?php cmspath('template');?>/images/home_col02.jpg"></a></li>
                        <li><a href="<?php cmspath('alone');?>/alone.php?id=58"><img src="<?php cmspath('template');?>/images/home_col03.jpg"></a></li>
                        <li><a href="<?php cmspath('alone');?>/alone.php?id=59"><img src="<?php cmspath('template');?>/images/home_col04.jpg"></a></li>
                        <li><a href="<?php cmspath('alone');?>/alone.php?id=60"><img src="<?php cmspath('template');?>/images/home_col05.jpg"></a></li>
                        <li><a href="<?php cmspath('alone');?>/alone.php?id=61"><img src="<?php cmspath('template');?>/images/home_col06.jpg"></a></li>
                        <li><a href="<?php cmspath('alone');?>/alone.php?id=95"><img src="<?php cmspath('template');?>/images/home_col07.jpg"></a></li>
                    </ul>
                </div>
            </div>
            <!-- /业务组成 -->
            <div class="home_c_col2">
                <!-- 公司简介 -->
                <div class="ibox w400 fl">
                    <div class="ibox_top">
                        <a href="<?php cmspath('alone');?>/alone.php?id=22" class="more">more</a>
                        <b class="ibox_home_title">About Us</b>
                    </div>
                    <div class="ibox_body">
                       <dl class="company_instr group">
                            <dt><img src="<?php cmspath('template');?>/images/home_map.jpg"></dt>
                            <dd>
                                <p>
                                    The German Tailer Hydraulik GmH companies to participate in the establishment of the Sino German joint venture, is committed to providing high quality, efficient service, has become a bridge of communication and cooperation at home and abroad.
                                </p>
                                <a href="<?php cmspath('alone');?>/alone.php?id=22" class="blue">MORE &gt;&gt; </a>
                            </dd>
                       </dl>
                    </div>
                </div>
                <!-- /公司简介 -->
                <!-- 企业动态 -->
                <div class="ibox fr w290">
                    <div class="ibox_top">
                        <a href="<?php cmspath('article');?>/article.php?id=18" class="more">more</a>
                        <b class="ibox_home_title">News Center</b>
                    </div>
                    <div class="ibox_body">
                       <ul class="home_news">
                            <?php 
 $fun_return=get_cate_content($cate_id='18',$limit='0,8',$lang='');if(isset($fun_return)&&is_array($fun_return)){
foreach($fun_return as $v){?>
                            <li>
                                <em class="time"><?php echo date('Y-m-d',$v['updatetime']);?></em>
                                <a href="<?php echo $v['url'];?>" <?php echo $v['target'];?> style="<?php echo $v['style'];?>"><?php echo $v['title'];?></a>
                            </li>
                            <?php 
}
}?>
                            <!-- <li><em>2012-12-4</em><a href="#">德国德国德国德国德国德国德国德国公司</a></li>
                            <li><em>2012-12-4</em><a href="#">德国Tailer Hydraulik GmH公司</a></li>
                            <li><em>2012-12-4</em><a href="#">德国Tailer Hydraulik GmH公司</a></li>
                            <li><em>2012-12-4</em><a href="#">德国Tailer Hydraulik GmH公司</a></li>
                            <li><em>2012-12-4</em><a href="#">德国Tailer Hydraulik GmH公司</a></li>
                            <li><em>2012-12-4</em><a href="#">德国Tailer Hydraulik GmH公司</a></li>
                            <li><em>2012-12-4</em><a href="#">德国Tailer Hydraulik GmH公司</a></li>
                            <li><em>2012-12-4</em><a href="#">德国Tailer Hydraulik GmH公司</a></li> -->
                       </ul>
                    </div>
                </div>
                <!-- /企业动态 -->
            </div>
        </div>
    </div>
</div>




<?php $this->display('foot',1,1);?>
</body>
</html>
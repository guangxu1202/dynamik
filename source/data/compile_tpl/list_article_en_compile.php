<!Doctype html>
<html><head>
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
    	<?php $this->display('left_nav',1,1);?>
        
        <div class="ibox">
            <div class="ibox_top">
                <div class="guide fr">
                    <span>Position：</span> <?php position(); ?> 
                </div>
                <b class="ibox_home_title blue_ico"><?php echo get_cate(out_id());?></b>
            </div>
            <div class="ibox_body min600">
                <div class="ibox_inner">
                    <ul class="news_list">
                        <?php 
 $fun_return=list_article();if(isset($fun_return)&&is_array($fun_return)){
foreach($fun_return as $v){?>
						<li>
							<em class="time"><?php echo date('Y-m-d 	H:m:s',$v['updatetime']);?></em>
							<a href="<?php echo $v['url'];?>" <?php echo $v['target'];?> style="<?php echo $v['style'];?>"><?php echo $v['title'];?></a>
						</li>
						<?php 
}
}?>
                    </ul>

                    <div class="list_page">
		   				<div class="page_fy">
		    			<?php echo list_page();?>
		   				</div>
	  				</div>
                </div>
            </div>
        </div>

    </div>
</div>



<?php $this->display('foot',1,1);?>
</body>
</html>
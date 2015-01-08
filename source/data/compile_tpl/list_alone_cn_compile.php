<!Doctype html>
<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="<?php echo content('info');?>">
<meta name="keywords" content="<?php echo content('keywords');?>">
<title><?php echo content('small_title');?>_<?php echo webinfo('web_name');?></title>
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
                    <span>当前位置：</span><?php position(); ?>
                </div>
                <b class="ibox_home_title blue_ico"><?php echo get_cate(out_id());?></b>
            </div>
            <div class="ibox_body min600">
                <div class="ibox_inner group">
                    <div class="single">
                        <?php echo content('content');?>
                    </div>
                     <div class="page_fy" style="float:none;margin-left:300px;">
					    <?php echo body_pages();?>
					  </div>
                </div>
            </div>
        </div>

    </div>
</div>



					
<?php $this->display('foot',1,1);?>
</body>
</html>
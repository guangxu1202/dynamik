
<div class="header">
    <div class="wrap">
        <div class="top">
            <div class="fr version">
                <!-- <a href="<?php cmspath('index');?>" class="chinese">中文版</a>
                <a href="<?php cmspath('index');?>" class="english">English</a> -->
                <?php 
 $fun_return=lang();if(isset($fun_return)&&is_array($fun_return)){
foreach($fun_return as $v){?><a href="<?php echo $v['url'];?>" <?php echo $v['class'];?>><?php echo $v['lang_name'];?></a><?php 
}
}?>
            </div>
            <a href="<?php cmspath('index');?>" class="logo"><img src="<?php cmspath('cms');?>upload/<?php echo webinfo('web_logo');?>" border="0"/></a>
        </div>
    </div>
</div>
<div class="nav mb15">
    <div class="wrap">
        <ul>
			<li class="<?php echo get_web_param('index_focus');?>"><a href="<?php cmspath('index');?>">Home</a></li>
			<?php 
 $fun_return=nav_middle();if(isset($fun_return)&&is_array($fun_return)){
foreach($fun_return as $nav_child){?> 
			<li class="<?php echo $nav_child['class'];?>"><a href="<?php echo $nav_child['url'];?>" <?php echo $nav_child['target'];?>><?php echo $nav_child['cate_name'];?></a>
                <?php if(fix_count($nav_child['child'])>0){?>
                    <div class="cbox c<?php echo $nav_child['id'];?>">
                    <?php 
 $fun_return=$nav_child['child'];if(isset($fun_return)&&is_array($fun_return)){
foreach($fun_return as $v){?>
                    <a href="<?php echo $v['url'];?>"> <?php echo $v['cate_name'];?> </a>
                    <?php 
}
}?>
                    </div>
                <?php }?>
            </li>
			<?php 
}
}?>

		</ul>
    </div>
</div>



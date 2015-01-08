

<div class="footer">
    <div class="wrap">

        <?php echo webinfo('web_powerby');?>
        <p>
			<?php 
 $fun_return=nav_bottom();if(isset($fun_return)&&is_array($fun_return)){
foreach($fun_return as $v){?>
				<a href="<?php echo $v['url'];?>" title="<?php echo $v['cate_name'];?>">
				<?php echo $v['cate_name'];?></a><?php if(!$v['last']){?>|<?php }?>
			<?php 
}
}?>
        </p>
    </div>
</div>
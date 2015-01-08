
<div class="leftBar">
	<!-- 产品栏目 -->
	 <div class="leftbox mb8">
	 	<!-- <?php echo get_cate_last_parent(out_id());?> -->
	 	<?php if(get_cate_last_parent(out_id()) ==4){?>
	    <div class="lb_head"><img src="<?php cmspath('template');?>/images/lhead_005.gif"></div>
	    <?php }?>
	    <?php if(get_cate_last_parent(out_id()) ==8){?>
	    <div class="lb_head"><img src="<?php cmspath('template');?>/images/lhead_003.gif"></div>
	    <?php }?>
	    <?php if(get_cate_last_parent(out_id()) ==29){?>
	    <div class="lb_head"><img src="<?php cmspath('template');?>/images/lhead_006.gif"></div>
	    <?php }?>
	    <?php if(get_cate_last_parent(out_id()) ==30){?>
	    <div class="lb_head"><img src="<?php cmspath('template');?>/images/lhead_004.gif"></div>
	    <?php }?>
	    <?php if(get_cate_last_parent(out_id()) == 41){?>
	    <div class="lb_head"><img src="<?php cmspath('template');?>/images/lhead_007.gif"></div>
	    <?php }?>
	    <div class="lb_body">
	    	<?php $tree=get_tpl_list_nav();?>
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
<?php
/**
 * $Author: BEESCMS $
 * ============================================================================
 * 网站地址: http://www.beescms.com
 * 您只能在不用于商业目的的前提下对程序代码进行修改和使用；
 * 不允许对程序代码以任何形式任何目的的再发布。
 * ============================================================================
*/


 
 /*获取网页id*/
function out_id(){
	$cate_id = empty($cate_id)?$GLOBALS['cateid']:$cate_id;
	return $cate_id;
}
function fix_count($arr){
	return count($arr);
}
function get_tpl_list_nav2($tpl_id='',$is_content=0){
	$lang=$GLOBALS['lang'];
	global $cateid;
	if(empty($tpl_id))
	{
		$cate = $GLOBALS['cat_id'];
	}
	else
	{
		$tpl_id = intval($tpl_id);//获得栏目模板ID，不存在获取内容页的栏目模板ID
		$sql="SELECT id from ".DB_PRE."category WHERE lang='".$lang."' AND temp_id=".$tpl_id;
		$cate_rel=$GLOBALS['mysql']->fetch_asc($sql);
		$cate=empty($cate_rel[0]['id'])?$GLOBALS['cateid']:$cate_rel[0]['id'];
	}
	//如果当前栏目没有下级，存在上级则返回上级
	if(!empty($cate)){
		if(file_exists(DATA_PATH.'cache_cate/cache_category_all.php')){include(DATA_PATH.'cache_cate/cache_category_all.php');}
		// $cate_info=get_cate_info($cate,$category);
		// $child_num=$GLOBALS['mysql']->fetch_asc("select COUNT(id) as haschild from ".DB_PRE."category where cate_parent=".$cate);
		// $cate=($child_num[0]['haschild'])?$cate:$cate_info['cate_parent'];
	}	
	if(!$cate){return;}
	if(file_exists(DATA_PATH.'cache_cate/cate_list_'.$lang.'.php')){include(DATA_PATH.'cache_cate/cate_list_'.$lang.'.php');}//当前语言下的栏目
	$nav_arr=array();
	if(!empty($cate_list)){
			foreach($cate_list as $k=>$v){
				if($v['cate_parent']==$cate&&!$v['cate_hide']){
				$cate_info=get_cate_info($v['id'],$category);
				$channel_info = get_cate_info($v['cate_channel'],$GLOBALS['channel']);//获得栏目模型信息
	
				$content_php=empty($channel_info['content_php'])?'show_content.php':$channel_info['content_php'];
				$list_php=empty($channel_info['list_php'])?'show_list.php':$channel_info['list_php'];
				
				$path=CMS_URL;
				$nav_arr[$k]['target']=intval($v['cate_is_open'])?'target="_blank"':'';//新窗口
				if($v['cate_tpl']==2){
					$nav_arr[$k]['url']=$v['cate_url'];
				}else{
					$nav_arr[$k]['url']=(($v['cate_html'])&&($GLOBALS['_confing']['web_html'][0]))?$path.$v['cate_fold_name'].'.html':$path.$list_php.'?id='.$v['id'];
				if($v['cate_tpl']==3){
						$nav_arr[$k]['url']=($v['cate_html']&&$GLOBALS['_confing']['web_html'][0])?$path.$v['cate_fold_name'].'.html':$path.$list_php.'?id='.$v['id'];
					}
				}	

				if($v['id']==$cateid){
					$nav_arr[$k]['class']="focus";
				}
				
				
				//开启内容获取选中栏目的推荐内容
			if($is_content){
					$content_sql = "SELECT*FROM ".DB_PRE."maintb WHERE category=".$v['id']." ORDER BY id DESC LIMIT 0,5";
					$content_rel = $GLOBALS['mysql']->fetch_asc($content_sql);
					
					if(!empty($content_rel)){
						foreach($content_rel as $ct_k=>$ct_v){
							$html_url = empty($ct_v['custom_url'])?date('YmdHms',$ct_v['addtime']):$ct_v['custom_url'];//内容静态页面	
							if($ct_v['purview']){
								$url2=$path.$content_php.'?id='.$ct_v['id'];
							}else{
								$url2=(!$ct_v['is_html']&&!($GLOBALS['_confing']['web_html'][0]))?$path.$content_php.'?id='.$ct_v['id']:$path.$cate_info['cate_fold_name'].'/'.$html_url.'.html';
							}
							
							$nav_arr[$k]['content'][$ct_k]['title'] = $ct_v['title'];
							$nav_arr[$k]['content'][$ct_k]['url'] = ($ct_v['is_url'])?$ct_v['url_add']:$url2;//链接

						}
					}
					
			}
				
				
				
				$nav_arr[$k]['cate_name']=$v['cate_name'];
				$nav_arr[$k]['cate_pic1']=empty($cate_info['cate_pic1'])?CMS_URL.'upload/no_pc.gif':CMS_URL.'upload/'.$cate_info['cate_pic1'];
				$nav_arr[$k]['cate_pic2']=empty($cate_info['cate_pic2'])?CMS_URL.'upload/no_pc.gif':CMS_URL.'upload/'.$cate_info['cate_pic2'];
				$nav_arr[$k]['cate_pic3']=empty($cate_info['cate_pic3'])?CMS_URL.'upload/no_pc.gif':CMS_URL.'upload/'.$cate_info['cate_pic3'];
				$nav_arr[$k]['cate_content']=$cate_info['cate_content'];
				$nav_arr[$k]['content_num'] = get_all_cate_content_num($v['id']);//获得栏目内容，包括子栏目
				$nav_arr[$k]['id']=$v['id'];
				$nav_arr[$k]['child']=get_child_cate($v['id'],$GLOBALS['lang'],$is_content);
				}
			}
		}
		if(!empty($nav_arr)){
		$i=1;
		$num=count($nav_arr);
		foreach($nav_arr as $k=>$v){
			$nav_arr[$k]['autoindex']=$i;
			$nav_arr[$k]['first']=($i==1)?1:0;
			$nav_arr[$k]['last']=($num==$i)?1:0;
			$i=$i+1;
		}
		}
		return $nav_arr;
}

?>
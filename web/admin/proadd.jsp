<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" type="text/css" href="../css/comm.css"/>
		<script src="../ueditor/ueditor.config.js" type="text/javascript" charset="utf-8"></script>
		<script src="../ueditor/ueditor.all.js" type="text/javascript" charset="utf-8"></script>
		<script src="../ueditor/lang/zh-cn/zh-cn.js" type="text/javascript" charset="utf-8" ></script>
	</head>
	<body>
		<form action="/DimaoManage/proadd" method="post" enctype="multipart/form-data">
			<p class="path">小米商城/产品中心/发布产品</p>
			<table border="0" cellspacing="0" cellpadding="0" class="tb">
				<tr>
					<td class="lable">类别</td><td>
					    <select name="typeid">
					    	<option value="1">小米</option>
					    	<option value="2">红米</option>
					    	<option value="3">电视</option>
					    	<option value="4">笔记本</option>
					    	<option value="5">盒子</option>
					    	<option value="6">路由器</option>
					    	<option value="7">智能硬件</option>
					    	<option value="8">服务</option>
					    	<option value="9">社区</option>
					    </select>
				    </td>
				</tr>
				<tr><td class="lable">名称</td><td><input type="text" name="proname"/></td></tr>
				<tr><td class="lable">价格</td><td><input type="text" name="price"/></td></tr>
				<tr><td class="lable">特色</td><td><input type="text" name="brief"/></td></tr>
				<tr><td class="lable">产地</td><td><input type="text" name="address"/></td></tr>
				<tr><td class="lable">图片</td><td><input type="file" name="file1"/></td></tr>
				<tr><td class="lable">内容</td><td><script id="editor" type="text/plain" style="width:1024px;height:200px;"></script>
				<input type="hidden" name="descriptions" id="descriptions"/></td></tr>
				<tr><td class="lable">属性</td><td><input type="checkbox" name="istop" value="1" style="width:30px;"/>首页推荐<input type="checkbox" name="isstar" value="1" style="width:30px;"/>首页明星单品 </td></tr>
				<tr><td class="lable">&nbsp;</td><td><input type="submit" name="btnsave" value="保存" id="btnsave"/></td></tr>
			</table>
		</form>
		<script src="../js/jquery-1.11.0.js" type="text/javascript" charset="utf-8"></script>
		 <script type="text/javascript">
 			var ue = UE.getEditor('editor');
 			$("#btnsave").click(function(e){
 				var str=UE.getEditor('editor').getContent();
 				console.log(str);
 				$("#descriptions").val(str);
 				
 			});
 			
 			
 		</script>
	</body>
</html>
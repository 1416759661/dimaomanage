<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.regex.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" type="text/css" href="css/comm.css"/>
	</head>
<body>
<%
List<Map<String, Object>> list = (List<Map<String, Object>>)request.getAttribute("list");
String pagestr = (String)request.getAttribute("pagestr");
%>
<p class="path">小米商城系统/产品中心/产品列表</p>

<table border="0" cellspacing="0" cellpadding="0" class="tb tblis">
       <tr>
       	 <td style="width:50px;">ID</td><td style="width:150px;">产品图片</td><td style="width:100px;">类别</td><td>产品名称</td><td style="width:80px;">价格</td><td style="width:80px;">产地</td><td style="width:80px;">首页推荐</td><td style="width:120px;">首页单品</td><td style="width:80px;">操作</td>   
       </tr>
       <%for (Map<String, Object> m : list) { %>
        <tr>
       		<td><%=m.get("id")%></td>
       		<td><img src="upload/<%=m.get("imgurl")%>" style="width:120px;height:35px;padding:5px 0px;"></td>
       		<td data-typeid="<%=m.get("typeid")%>" class="typename"></td>
       		<td><%=m.get("proname")%></td>
       		<td><%=m.get("price")%></td>
       		<td><%=m.get("address")%></td>
       		<td><input type="checkbox" <%=(m.get("istop").toString().equals("1"))?"checked='checked'":"" %>  style="width:15px;height:15px;font-size: 12px;font-weight: lighter; " disabled="disabled">  </td>
       		<td><input type="checkbox" <%=(m.get("isstar").toString().equals("1"))?"checked='checked'":"" %>  style="width:15px;height:15px;font-size: 12px;font-weight: lighter;" disabled="disabled">  </td>
       		<td><a href="proedit?id=<%=m.get("id")%>">修改</a> <a href="prodelete?id=<%=m.get("id")%>">删除</a></td>
       </tr>
    	<% } %>
    </table>
    
    <div class="pager">
       		<%=pagestr%>
    </div>
    
    <script src="js/jquery-1.11.0.js" type="text/javascript" charset="utf-8"></script>
    <script type="text/javascript">
    	$("td.typename").each(function(index,item){
    		var typeid=$(item).attr("data-typeid");
    		//console.log(typeid);
    		switch(typeid)
    		{
    			case "1":$(item).text("小米"); break;
    			case "2":$(item).text("红米"); break;
    			case "3":$(item).text("电视"); break;
    			case "4":$(item).text("笔记本"); break;
    			case "5":$(item).text("盒子"); break;
    			case "6":$(item).text("路由器"); break;
    			case "7":$(item).text("智能硬件"); break;
    			case "8":$(item).text("服务"); break;
    			case "9":$(item).text("社区"); break;
    		}
    	});
    </script>

</body>
</html>
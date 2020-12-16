<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
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
List<Map<String, Object>> list = (List<Map<String, Object>>)request.getAttribute("newslist");
String pagestr = (String)request.getAttribute("pagestr");
%>
<p class="path">融智信息系统/信息中心/信息管理</p>

<table border="0" cellspacing="0" cellpadding="0" class="tb tblis">
       <tr>
       	 <td style="width:50px;">ID</td><td>标题</td><td style="width:80px;">类别</td><td style="width:80px;">作者</td><td style="width:80px;">来源</td><td style="width:120px;">时间</td><td style="width:80px;">操作</td>   
       </tr>
       <%for (Map<String, Object> m : list) { %>
        <tr>
       		<td><%=m.get("id")%></td>
       		<td><%=m.get("title")%></td>
       		<td data-typeid="<%=m.get("typeid")%>" class="typename"></td>
       		<td><%=m.get("author")%></td>
       		<td><%=m.get("source")%></td>
       		<td><%=m.get("createtime")%></td>
       		<td><a href="newsedit?id=<%=m.get("id")%>">修改</a> <a href="newsdelete?id=<%=m.get("id")%>">删除</a></td>
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
    			case "1":$(item).text("学校公告"); break;
    			case "2":$(item).text("菁菁校园"); break;
    			case "3":$(item).text("学校趣闻"); break;
    			case "4":$(item).text("班级通知"); break;
    			case "5":$(item).text("数学建模"); break;
    			case "6":$(item).text("生活攻略"); break;
    		}
    	});
    </script>

</body>
</html>
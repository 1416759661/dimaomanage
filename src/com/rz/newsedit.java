package com.rz;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class newsedit
 */
@WebServlet(name="newsedit",value="/newsedit")
public class newsedit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public newsedit() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String id=request.getParameter("id"); 
		 DBHelper Dal=new DBHelper();
		 String strSql=" select * from tbnews where id=? "; 
		 Map<String, Object> objbyid = null;
		 List<Object> params = new ArrayList<Object>();
		 params.add(id);
		 objbyid=Dal.getSingleObject(strSql, params);
		 request.setAttribute("objbyid", objbyid);
		 request.getRequestDispatcher("admin/newsedit.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 request.setCharacterEncoding("utf-8");  
		 
		 String typename=request.getParameter("typename"); 
		 String id=request.getParameter("id"); 
		 String tbtitle=request.getParameter("tbtitle"); 
		 String tbauthor=request.getParameter("tbauthor"); 
		 String tbsource=request.getParameter("tbsource"); 
		 String tbctime=request.getParameter("tbctime"); 
		 String tbcontents=request.getParameter("tbcontents"); 
		 
		 DBHelper Dal=new DBHelper();
		 String strSql=" update tbnews set typeid=?,title=?,author=?,source=?,createtime=?,contents=? where id=? "; 
		 List<Object> params = new ArrayList<Object>();
		 params.add(typename);
		 params.add(tbtitle);
		 params.add(tbauthor);		 
		 params.add(tbsource);
		 params.add(tbctime);
		 params.add(tbcontents);
		 params.add(id);
		 Dal.excuteSql(strSql, params);
		 response.setCharacterEncoding("utf-8");
		 response.setContentType("text/html;charset=utf-8");
		 response.getWriter().write("<font color='green'>保存成功,3秒之后发生跳转!</font>");
		 response.setHeader("Refresh", "3;URL="+request.getContextPath()+"/newsedit?id="+id);
	}

}

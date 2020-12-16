package com.rz;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class newsadd
 */
@WebServlet(name="newsadd",value="/newsadd")
public class newsadd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public newsadd() {
        super();
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 request.setCharacterEncoding("utf-8"); 
		 String typename=request.getParameter("typename"); 
		 String tbtitle=request.getParameter("tbtitle"); 
		 String tbauthor=request.getParameter("tbauthor"); 
		 String tbsource=request.getParameter("tbsource"); 
		 String tbctime=request.getParameter("tbctime"); 
		 String tbcontents=request.getParameter("tbcontents"); 
		 
		 DBHelper Dal=new DBHelper();
		 String strSql=" insert into tbnews (title,author,source,createtime,contents,typeid) values (?,?,?,?,?,?) "; 
		 List<Object> params = new ArrayList<Object>();
		 
		 params.add(tbtitle);
		 params.add(tbauthor);
		 params.add(tbsource);
		 params.add(tbctime);
		 params.add(tbcontents);
		 params.add(typename);
		 Dal.excuteSql(strSql, params);
		 response.setCharacterEncoding("utf-8");
		 response.setContentType("text/html;charset=utf-8");
		 response.getWriter().write("<font color='green'>保存成功!</font>");
        response.setHeader("Refresh", "3;URL="+request.getContextPath()+"/admin/newsadd.jsp");
	}

}

package com.rz;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("username"); 
		String password=request.getParameter("password"); 
		DBHelper Dal=new DBHelper();
		String strSql=" select * from tbusers where username='"+username+"' and password='"+password+"'"; 
		List<Object> params = new ArrayList<Object>();
		List<Map<String, Object>> userlist = null;
		try {
			userlist=Dal.executeQuery(strSql, params);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if(userlist.size()>0)
		{
			request.getSession().setAttribute("currentuser", userlist.get(0));
			response.sendRedirect("admin/default.jsp");
		}
		else
		{
			response.setCharacterEncoding("utf-8");
			response.setContentType("text/html;charset=utf-8");
			response.getWriter().write("<font color='green'>用户名或者密码不正确,3秒后跳转到登录页面！</font>");
			response.setHeader("Refresh", "3;URL="+request.getContextPath()+"/admin/login.jsp");
		}
	}

}

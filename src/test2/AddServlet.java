package test2;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class AddServlet extends HttpServlet  {

	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException, ServletException {
		
		int a=Integer.parseInt(req.getParameter("num1"));
		int b=Integer.parseInt(req.getParameter("num2"));
		
		int result=a+b;
		
		res.getWriter().println("result is:"+result);
		req.setAttribute("key",result);
		
		RequestDispatcher rd=req.getRequestDispatcher("hello");
		rd.forward(req, res);
		
	}
	
	
}

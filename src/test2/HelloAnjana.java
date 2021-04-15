package test2;



import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloAnjana extends HttpServlet{

	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException{
		
		res.getWriter().println("Hello anjana");
		
	}
}

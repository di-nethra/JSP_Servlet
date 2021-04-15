package test2;



import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloAnjana extends HttpServlet{

	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException{
		
		int k=(int)req.getAttribute("key");
	    int value=k*k;
		res.getWriter().println(value);
		
	}
}

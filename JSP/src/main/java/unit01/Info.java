package unit01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class info
 */
@WebServlet("/Info")
public class Info extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Info() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
		String content = request.getParameter("content");
		
		PrintWriter out = response.getWriter();
		
		out.print("<html><body>");
		
		out.println("What you wrote about your information<hr>");
		out.println("gender : <b>");
		out.println(gender);
		out.println("</b><br> agrement of Email : <b>");
		out.println(email);
		out.println("</b><br> hello : <b><pre>");
		out.println(content);
		
		out.println("</pre></b><a href = 'javascript:history.go(-1)'>again</a>");
		out.print("</body></html>");
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

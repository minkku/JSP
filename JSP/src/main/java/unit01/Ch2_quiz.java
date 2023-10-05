package unit01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ch2_quiz
 */
@WebServlet("/Ch2_quiz")
public class Ch2_quiz extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		res.setContentType("text/html;charset=UTF-8");
		
		PrintWriter out = res.getWriter();
		String name = req.getParameter("name");
		String idNum = req.getParameter("idf");
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		String ckpw = req.getParameter("pwc");
		String email = req.getParameter("email");
		String domain = req.getParameter("domain");
		String zip = req.getParameter("zip");
		String addres = req.getParameter("addres");
		String mobile = req.getParameter("mobile");
		String susin = req.getParameter("agrement");
		
		String job = req.getParameter("job");
		String like[] = req.getParameterValues("like");
		out.print("<html><body>");
		out.println("이름 <b>");
		out.print(name);
		
		out.println("</b> 주민등록번호 <b>");
		out.print(idNum);
		
		out.println("</b> 아이디 <b>");
		out.print(id);
		
		out.println("</b> 비밀번호 <b>");
		out.print(pw);
		
		out.println("</b> <b>");
		out.print(ckpw);
		
		out.println("</b> <b>");
		out.print(email);
		
		out.println("</b> <b>");
		out.print(domain);
		
		out.println("</b> <b>");
		out.print(zip);
		
		out.println("</b> <b>");
		out.print(addres);
		
		out.println("</b> <b>");
		out.print(mobile);
		
		out.println("</b> <b>");
		out.print(job);
		
		out.println("</b> <b>");
		out.print(susin);
		
		out.println("</b> <b>");
		out.print(like);
		
		out.println("<br><a href = 'javascript:history.go(-1)>back</a>");
		out.print("</body></html>");
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		doGet(req, res);
	}

}

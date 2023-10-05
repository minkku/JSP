package unit01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CheckBox
 */
@WebServlet("/CheckBox")
public class CheckBox extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckBox() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// 동시에 여러개의 값을 동일한 이름으로 받아오는 경우 배열의 형태로 값이 전송되기 떄문에
		// getParameterValues()를 사용해주어야 한다.
		// ㄴ 모든 값을 배열 형태로 얻어온다.
		
		res.setContentType("text/html;UTF-8");
		
		PrintWriter out = res.getWriter();
		out.print("<html><body>");
		
		String items[] = req.getParameterValues("item");
		if(items == null) {
			out.print("선택한 항목이 없슈");
		} else {
				out.println("선택한 항목이유 <hr>");
				for(String item : items) {
					out.print(item + " ");
				}
			}
		out.println("<br><a href = 'javascript:history.go(-1)'>되돌아가기</a>");
		out.print("</body></html>");
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, res);
	}

}

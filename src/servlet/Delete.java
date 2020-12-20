package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DeleteLogic;
import model.GetMutterListLogic;
import model.Mutter;


@WebServlet("/Delete")
public class Delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// リクエストパラメータの取得
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		
		//削除処理		
		DeleteLogic dlogic = new DeleteLogic();
		dlogic.delete(Integer.parseInt(id));
		
		// つぶやきリストを取得して、リクエストスコープに保存
	    GetMutterListLogic getMutterListLogic =
	        new GetMutterListLogic();
	    List<Mutter> mutterList = getMutterListLogic.execute();
	    request.setAttribute("mutterList", mutterList);
		
		//つぶやき画面にフォワード
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/main.jsp");
		dispatcher.forward(request, response);
	}
}

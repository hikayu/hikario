package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.GetMutterListLogic;
import model.Mutter;

/**
 * Servlet implementation class Search
 */
@WebServlet("/Search")
public class Search extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request,
		      HttpServletResponse response)
		      throws ServletException, IOException {

		    // リクエストパラメータの取得
		    request.setCharacterEncoding("UTF-8");
		    String searchInput = request.getParameter("search");

		    // つぶやきリストを取得して、リクエストスコープに保存
		    GetMutterListLogic getMutterListLogic =
		        new GetMutterListLogic();
		    List<Mutter> mutterList = getMutterListLogic.execute_Search(searchInput);
		    request.setAttribute("mutterList", mutterList);

		    // フォワード
		    RequestDispatcher dispatcher = request.getRequestDispatcher(
		        "/WEB-INF/jsp/main.jsp");
		    dispatcher.forward(request, response);
		  }

}

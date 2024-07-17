package seiseki;

import javax.servlet.http.HttpServlet;

public class TestRegistExecuteAction extends HttpServlet {

	String message;
	if (line > 0) {
		message = "登録が完了しました。";
	} else {
		message = "登録に失敗しました。";
	}
	req.setAttribute("message", message);

	// jspにフォワード
	req.getRequestDispatcher("test_regist.jsp").forward(req, resp);
}


}

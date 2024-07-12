package seiseki;

//import java.util.List;
//
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import bean.TestListStudent;
//import bean.TestListSubject;
//import tool.CommonServlet;
//
//@WebServlet(urlPatterns={"/seiseki/test_regist_done"})
//public abstract class Test_regist_done extends CommonServlet {
//	@Override
//	public void get(HttpServletRequest req, HttpServletResponse resp) throws Exception {
//		// コースをすべて取得
//		List<TestListSubject> list = new TestListSubjectDAO().all();
//		// コースリストをアトリビュートにセット
//		req.setAttribute("courses", list);
//		// jspにフォワード
//		req.getRequestDispatcher("insert.jsp").forward(req, resp);
//	}
//
//	@Override
//	public void post(HttpServletRequest req, HttpServletResponse resp) throws Exception {
//		// 学生インスタンスを生成し、送信された情報をセット
//		TestListStudent student = new TestListStudent();
//		student.setStudent_id(Integer.parseInt(req.getParameter("student_id")));
//		student.setStudent_name(req.getParameter("student_name"));
//		student.setCourse_id(Integer.parseInt(req.getParameter("course_id")));
//
//		// 学生を登録
//		int line = new StudentDAO().insert(student);
//
//		// メッセージをアトリビュートにセット
//		String message;
//		if (line > 0) {
//			message = "登録が完了しました。";
//		} else {
//			message = "登録に失敗しました。";
//		}
//		req.setAttribute("message", message);
//
//		// jspにフォワード
//		req.getRequestDispatcher("insert_out.jsp").forward(req, resp);
//	}
//
//}
//
//
//
//}

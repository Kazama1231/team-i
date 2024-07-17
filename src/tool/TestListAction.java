package tool;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public  abstract class TestListAction extends Action {
	@Override
	public abstract void execute(HttpServletRequest request, HttpServletResponse response)throws Exception;

	protected abstract void setTestListSubject(HttpServletRequest req, HttpServletResponse resp) throws Exception;


	protected abstract void setTestListStudent(HttpServletRequest req, HttpServletResponse resp) throws Exception;



}

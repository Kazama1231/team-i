package tool;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public  abstract class TestRegistAction extends Action {
	@Override
	public abstract void execute(HttpServletRequest request, HttpServletResponse response)throws Exception;

	protected abstract void setTestListSubject(HttpServletRequest req, HttpServletResponse resp) throws Exception;


	protected abstract void setRequestData(HttpServletRequest req, HttpServletResponse resp) throws Exception;



}

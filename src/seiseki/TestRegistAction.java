package seiseki;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import tool.Action;

public abstract class TestRegistAction extends Action {
	@Override
	public abstract void execute(HttpServletRequest request, HttpServletResponse response)throws Exception;
	    HttpSession session = request.getSession();
	    Teacher teacher = (Teacher)session.getAttribute("user");



}


package co.jessie.lms.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jessie.lms.VO.MemberVo;
import co.jessie.lms.dao.MemberDao;

public class LoginCheckCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//db
		MemberDao dao = new MemberDao();
		MemberVo member = null;
		String path = null;
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		member = new MemberVo(id, pw);
		member = dao.selectMember(member);
		request.setAttribute("member", member);

		if(member != null) {
			path = "views/student/loginOk.jsp";
		} else {
			path = "views/student/loginFail.jsp";
		}
		return path;
	}

}

package co.jessie.lms.board.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jessie.lms.VO.MemberVo;
import co.jessie.lms.command.Command;
import co.jessie.lms.dao.MemberDao;

public class idCheckCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//db
		MemberDao dao = new MemberDao();
		String id = request.getParameter("id");
		int n = dao.memberIdCheck(id);
		request.setAttribute("check", n);
		String path = "views/student/idCheck.jsp";
		return path;
	}

}

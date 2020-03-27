package co.jessie.lms.command;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jessie.lms.VO.MemberVo;
import co.jessie.lms.dao.MemberDao;

public class MemberListCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//DB작업
		MemberDao dao = new MemberDao();
		ArrayList<MemberVo> list = new ArrayList<MemberVo>();
		list = dao.select();
		
		request.setAttribute("members", list);  // member라는 변수로 list를 읽을것임 (member는 jsp에서 사용하게됨)				
		String path = "views/student/memberlist.jsp"; // 보여줄 페이지
		return path;
	}

}

package co.jessie.lms.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jessie.lms.VO.MemberVo;
import co.jessie.lms.dao.MemberDao;

public class MemberInsertCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberDao dao = new MemberDao();
		MemberVo vo = new MemberVo();
		vo.setId(request.getParameter("id"));
		vo.setName(request.getParameter("name"));
		vo.setPw(request.getParameter("pw"));
		vo.setAddr(request.getParameter("addr"));
		vo.setTel(request.getParameter("tel"));
		vo.setGender(request.getParameter("gender"));		
		String[] hobby = request.getParameterValues("hobby");
		 	if(hobby == null) { // 값을 입력하지 않고 왔을때
		 		vo.setHobby("");
		 	} else {	// 취미가 존재한다면
		 		String hobbyJoint = "";
		 		for(String h : hobby) {
		 			hobbyJoint += h + " ";
		 	}
		 		vo.setHobby(hobbyJoint);	
	}
		
		int i =dao.memberInsert(vo);
		
		String path = null;
		if (i != 0) {
			path ="memberList.do";
		} else {
			path = "views/student/memberInsertFaile.jsp";			
		}
		return path;
	}

}

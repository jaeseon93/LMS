package co.jessie.lms.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jessie.lms.board.command.BoardInputCommand;
import co.jessie.lms.board.command.BoardListCommand;
import co.jessie.lms.board.command.BoardViewCommand;
import co.jessie.lms.board.command.BoardWriteFormCommand;
import co.jessie.lms.board.command.idCheckCommand;
import co.jessie.lms.command.Command;
import co.jessie.lms.command.HomeCommand;
import co.jessie.lms.command.LoginCheckCommand;
import co.jessie.lms.command.LoginCommand;
import co.jessie.lms.command.MemberInsertCommand;
import co.jessie.lms.command.MemberJoinCommand;
import co.jessie.lms.command.MemberListCommand;

@WebServlet("/Fcontroller")
public class Fcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	HashMap<String, Command> list = null;

    public Fcontroller() {
        super();
    }


	public void init(ServletConfig config) throws ServletException {
		list = new HashMap<String, Command>();
		list.put("/home.do", new HomeCommand()); // 처음 보여주는 페이지
		list.put("/login.do", new LoginCommand());// 로그인 처리
		list.put("/loginCheck.do", new LoginCheckCommand()); // loginForm에 form액션
		list.put("/memberJoin.do", new MemberJoinCommand()); 
		list.put("/memberList.do", new MemberListCommand()); 
		list.put("/memberInsert.do", new MemberInsertCommand()); 
		list.put("/boardList.do", new BoardListCommand()); 
		list.put("/boardWriteForm.do", new BoardWriteFormCommand()); 
		list.put("/boardInput.do", new BoardInputCommand()); 
		list.put("/boardView.do", new BoardViewCommand()); 
		list.put("/idCheck.do", new idCheckCommand()); 

	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String uri = request.getRequestURI();  //uri만을 잘라내는 기능을 함
		String contextPath = request.getContextPath(); // contextPath만 잘라내서 보기
		String path = uri.substring(contextPath.length());  
		Command comm = list.get(path); //적절한 command를 찾음
		
		String view = comm.exec(request, response); // 실행할 클래스를 동작
		RequestDispatcher disp = request.getRequestDispatcher(view);
		disp.forward(request, response);
		
		
	}

}

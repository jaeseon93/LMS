package co.jessie.lms.board.command;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jessie.lms.board.dao.BoardDao;
import co.jessie.lms.board.vo.BoardVo;
import co.jessie.lms.command.Command;

public class BoardListCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 여기는 게시판 목록 보여주는 command작성 
		//DB 작업
		BoardDao dao = new BoardDao();
		ArrayList<BoardVo> list = new ArrayList<BoardVo>(); 
		list = dao.selectAll();
		
		request.setAttribute("boards", list); // board라는 변수로 list를 읽을것임 (board는 jsp에서 사용하게됨)			
		String path = "views/board/boardList.jsp";		
		return path;
	}

}

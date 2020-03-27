package co.jessie.lms.board.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jessie.lms.board.dao.BoardDao;
import co.jessie.lms.board.vo.BoardVo;
import co.jessie.lms.command.Command;

public class BoardViewCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//db작업
		BoardDao dao = new BoardDao();
		BoardVo vo = new BoardVo();
		vo.setBoardid(Integer.parseInt(request.getParameter("boardid")));
		vo = dao.select(vo);
		
		request.setAttribute("views", vo);
		
		String path = "views/board/boardView.jsp";
		return path;
	}

}

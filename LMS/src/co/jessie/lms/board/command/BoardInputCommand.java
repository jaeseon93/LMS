package co.jessie.lms.board.command;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jessie.lms.board.dao.BoardDao;
import co.jessie.lms.board.vo.BoardVo;
import co.jessie.lms.command.Command;

public class BoardInputCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// db작업
		BoardDao dao = new BoardDao();
		BoardVo vo = new BoardVo();
		vo.setWriter(request.getParameter("writer"));
		vo.setWdate(Date.valueOf(request.getParameter("wdate"))); // String을 Date로 변환
		vo.setTitle(request.getParameter("title"));
		vo.setContents(request.getParameter("contents"));
		int n = dao.insert(vo);
		String path = null;
		if(n !=0) {
			path = "boardList.do";			
		} else {
			path = "views/board/boardInsertFail.jsp";
		}
		return path;
	}

}

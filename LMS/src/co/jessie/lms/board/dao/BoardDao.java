package co.jessie.lms.board.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import co.jessie.lms.board.vo.BoardVo;

public class BoardDao {
	
	private String driver = "oracle.jdbc.driver.OracleDriver";
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String user = "jessie";
	private String password = "jessie";
	
	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;
	
	private final String BOARD_LIST = "select * from board";
	private final String BOARD_SELECT = "select * from board where boardid = ?";
	private final String BOARD_INSERT = "insert into board values (b_num.nextval,?,?,?,?,0)";
	private final String BOARD_UPDATE = "update board set contents = ? where boardid = ?";
	private final String BOARD_DELETE = "delete from board where boardid = ? ";
	
	
	public BoardDao() {
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, password);
		}catch(ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<BoardVo> selectAll() {
		ArrayList<BoardVo> list = new ArrayList<BoardVo>();
		
		try {
			psmt = conn.prepareStatement(BOARD_LIST);
			rs = psmt.executeQuery();
			while(rs.next()) {
				BoardVo vo = new BoardVo();
				vo.setBoardid(rs.getInt("boardid"));
				vo.setWriter(rs.getString("writer"));
				vo.setWdate(rs.getDate("wdate"));
				vo.setTitle(rs.getString("title"));
				vo.setContents(rs.getString("contents"));
				vo.setHit(rs.getInt("hit"));
				list.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public BoardVo select(BoardVo vo) {
		try {
			psmt = conn.prepareStatement(BOARD_SELECT);
			psmt.setInt(1, vo.getBoardid());
			rs = psmt.executeQuery();
			if (rs.next()) {
				vo.setWriter(rs.getString("writer"));
				vo.setWdate(rs.getDate("wdate"));
				vo.setTitle(rs.getString("title"));
				vo.setContents(rs.getString("contents"));
				vo.setHit(rs.getInt("hit"));
				hitCountUp(rs.getInt("boardid"));
			}
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
		return vo;		
	}
	
	public int insert(BoardVo vo) {
		int n = 0;
		try {
		 psmt = conn.prepareStatement(BOARD_INSERT);
		 psmt.setString(1, vo.getWriter());
		 psmt.setDate(2, (Date) vo.getWdate());
		 psmt.setString(3, vo.getTitle());
		 psmt.setString(4, vo.getContents());
		 n = psmt.executeUpdate();
		} catch(SQLException e) {
			e.printStackTrace();
		}
		return n;
	}
	
	public int update(BoardVo vo) { 
		int n = 0;
		try {
			psmt = conn.prepareStatement(BOARD_UPDATE);
			psmt.setString(1, vo.getContents());
			psmt.setInt(2, vo.getBoardid());
			n = psmt.executeUpdate();
		}catch (SQLException e) {
			e.printStackTrace();
		}
		return n;
	}
	
	public int delete(BoardVo vo) {
		int n = 0;
		try {
			psmt = conn.prepareStatement(BOARD_DELETE);
			psmt.setInt(1, vo.getBoardid());
			n = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return n;
	}
	
	private void hitCountUp(int boardid) {
		final String sql = "update board set hit = hit + 1 where boardid = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, boardid);
			psmt.executeUpdate();
		}catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	
	
	
}

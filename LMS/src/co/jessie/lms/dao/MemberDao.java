package co.jessie.lms.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


import co.jessie.lms.VO.MemberVo;

public class MemberDao {
	private String driver = "oracle.jdbc.driver.OracleDriver";
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String user = "jessie";
	private String password = "jessie";
	
	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;
	
	private final String MEMBER_LIST = "select * from member";
	private final String MEMBER_CHECK ="select * from member where id = ? and pw = ?";
	private final String MEMBER_INSERT = "insert into member values(?,?,?,?,?,?,?)";
	private final String MEMBER_ID_CHECK = "select * from member where id= ?";
	
	public MemberDao() {
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	public ArrayList<MemberVo> select () {
		ArrayList<MemberVo> list = new ArrayList<MemberVo>();
		MemberVo member = null;
		try {
			psmt = conn.prepareStatement(MEMBER_LIST);
			rs = psmt.executeQuery();
			while (rs.next()) {
				member = new MemberVo();
				member.setId(rs.getString("id"));
				member.setName(rs.getString("name"));
				member.setAddr(rs.getString("addr"));
				member.setTel(rs.getString("tel"));
				member.setGender(rs.getString("gender"));
				member.setHobby(rs.getString("hobby"));
				list.add(member);
				
			}						
		}catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	public MemberVo selectMember(MemberVo member) {
		MemberVo vo = null;
		try {
			psmt = conn.prepareStatement(MEMBER_CHECK);
			psmt.setString(1, member.getId());
			psmt.setString(2, member.getPw());
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				String id = rs.getString("id");
				String pw = rs.getString("pw");
				vo = new MemberVo(id,pw);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return vo;
	}
	
	public int memberInsert(MemberVo member) {
		int n = 0;
		try {
			psmt = conn.prepareStatement(MEMBER_INSERT);
			psmt.setString(1, member.getId());
			psmt.setString(2, member.getName());
			psmt.setString(3, member.getPw());
			psmt.setString(4, member.getAddr());
			psmt.setString(5, member.getTel());
			psmt.setString(6, member.getGender());
			psmt.setString(7, member.getHobby());
		n = psmt.executeUpdate();
		}catch (SQLException e) {
			e.printStackTrace();
		}
		return n;
	}
	
	public int memberIdCheck(String id) {		
		int n = 0;
		try {
		 psmt = conn.prepareStatement(MEMBER_ID_CHECK);
		 psmt.setString(1, id);
		 rs = psmt.executeQuery();
		 if (rs.next()) {
			 n = 1;
		 }
		}catch(SQLException e) {
			e.printStackTrace();
		}	
		return n;
	}
}

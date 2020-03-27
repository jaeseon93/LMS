package co.jessie.lms.board.vo;

import java.util.Date;

public class BoardVo {
	private int boardid;
	private String writer;
	private Date wdate;
	private String title;
	private String contents;
	private int hit;
	
	public BoardVo() {

	}
	
	
	public int getBoardid() {
		return boardid;
	}
	
	public void setBoardid(int boardid) {
		this.boardid = boardid;
	}
	
	public String getWriter() {
		return writer;
	}
	
	public void setWriter(String writer) {
		this.writer = writer;
	}
	
	public Date getWdate() {
		return wdate;
	}
	
	public void setWdate(Date wdate) {
		this.wdate = wdate;
	}
	
	public String getTitle() {
		return title;
	}
	
	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getContents() {
		return contents;
	}
	
	public void setContents(String contents) {
		this.contents = contents;
	}
	
	public int getHit() {
		return hit;
	}
	
	public void setHit(int hit) {
		this.hit = hit;
	}
	
}

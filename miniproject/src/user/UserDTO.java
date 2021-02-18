package user;

/* 
 * 회원 데이터베이스 구축
 * userID, userPassword, userEmail, userGenre
 * 
 * @minhee
 * */

public class UserDTO {
	
	private String userID;
	private String userPassword;
	private String userEmail;
	private String userGenre;
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserGenre() {
		return userGenre;
	}
	public void setUserGenre(String userGenre) {
		this.userGenre = userGenre;
	}
	
}

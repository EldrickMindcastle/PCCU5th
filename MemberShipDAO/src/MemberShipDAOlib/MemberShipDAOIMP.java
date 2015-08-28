package MemberShipDAOlib;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class MemberShipDAOIMP implements MemberShipDAO {
	final String DRIVER_NAME = "com.mysql.jdbc.Driver";
    final String CONN_STRING = "jdbc:mysql://localhost:3306/mydb?" +
                    "user=root&password=mysql2015";
	@Override
	public void add(Member member) {
		 try {
	            Class.forName(DRIVER_NAME);
	            Connection conn = DriverManager.getConnection(CONN_STRING);
	            PreparedStatement pstmt = conn.prepareStatement("Insert into customer_acc (mail,password ) values (?,?)");
	            pstmt.setString(1,member.member_acc);
	            pstmt.setString(2,member.member_pw);
	            pstmt.executeUpdate();
	            pstmt.close();
	            conn.close();
	        } catch (SQLException ex) {
	            Logger.getLogger(MemberShipDAOIMP.class.getName()).log(Level.SEVERE, null, ex);
	        } catch (ClassNotFoundException ex) {
	            Logger.getLogger(MemberShipDAOIMP.class.getName()).log(Level.SEVERE, null, ex);
	        }
	}

	@Override
	public void update(Member member) {
		// TODO Auto-generated method stub
	}

	@Override
	public Member FindByAcc(String member_acc) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean Login(String member_acc, String member_pw) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void resetpw(String member_acc) {
		// TODO Auto-generated method stub
		
	}
	
}

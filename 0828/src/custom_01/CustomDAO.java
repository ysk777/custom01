package custom_01;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class CustomDAO {
	DBOpen dbopen = null;
	DBClose dbclose = null;
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	StringBuffer sql = null;
	public CustomDAO() {
		dbopen = new DBOpen();
		dbclose = new DBClose();
	}
	public int insert(CustomVO CustomVO)	{
		
	int count = 0;
		
	try {
		con = dbopen.getConnection();
		sql = new StringBuffer();
		sql.append("insert into custom_01(p_id, p_pw, c_name, c_email, c_tel)");
		sql.append("values(?, ?, ?, ?, ?)");
		
		pstmt = con.prepareStatement(sql.toString());
		pstmt.setString(1, CustomVO.getP_id());
		pstmt.setString(2, CustomVO.getP_pw());
		pstmt.setString(3, CustomVO.getC_name());
		pstmt.setString(4, CustomVO.getC_email());
		pstmt.setString(5, CustomVO.getC_tel());

		count = pstmt.executeUpdate();
			
	}catch(Exception e) {
		e.printStackTrace();
	}finally {
		dbclose.close(con, pstmt);
	}
	return count;
	}
public ArrayList<CustomVO> list(){
	ArrayList<CustomVO> list = new ArrayList<CustomVO>();
		
	try {
		con = dbopen.getConnection();
			
		sql = new StringBuffer();
		sql.append("select p_id, p_pw, c_name, c_email, c_tel from custom_01 order by p_id asc");
		pstmt = con.prepareStatement(sql.toString());
		rs = pstmt.executeQuery();
			
		//rs.next(): ���� ȣ��� ù���� ���ڵ�� �̵�
		//rs.next(): ������ ���ڵ���� ���������� �ڵ� �̵�
			
		while(rs.next()==true) {
			//DBMS --> JAVA ��ü�� ��ȯ
			CustomVO customVO = new CustomVO();
			customVO.setP_id(rs.getString("p_id"));
			customVO.setP_pw(rs.getString("p_pw"));
			customVO.setC_name(rs.getString("c_name"));
			customVO.setC_email(rs.getString("c_email"));
			customVO.setC_tel(rs.getString("c_tel"));

			list.add(customVO);
		}
	}catch(Exception e) {
		e.printStackTrace();
	}finally {
		dbclose.close(con, pstmt, rs);//�޸� ����
	}
	return list;
}	
}

package dao;

import java.io.Serializable;
import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bean.Student;
import bean.TestListStudent;

public class TestListStudentDao extends DAO implements Serializable{
	private String baseSql;
	private List<TestListStudent> postFilter(ResultSet rSet) throws Exception{
		List<TestListStudent> list = new ArrayList<>();
		try {
			while (rSet.next()){
				TestListStudent testliststudent = new TestListStudent();
				testliststudent. setSubjectName(rSet.getString("subjectName"));
				testliststudent. setSubjectCd(rSet.getString("subjectCd"));
				testliststudent. setNum(rSet.getInt("num"));
				testliststudent. setPoint(rSet.getInt("point"));
				list.add(testliststudent);
			}
		} catch (SQLException | NullPointerException e) {
			e.printStackTrace();
		}
		return list;
	}
	public List<TestListStudent> filter(Student student) throws Exception{
		List<TestListStudent> list = new ArrayList<>();
		Connection con = getConnection();

		PreparedStatement st = con.prepareStatement("SELECT * FROM test WHERE Student_no=?");



	}
	return list;

}

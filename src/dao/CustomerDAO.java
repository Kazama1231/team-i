package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean.Customer;

public class CustomerDAO extends DAO {
	public Customer search(String name, String password) throws Exception {
		Customer customer = null;

		Connection con = getConnection();

		PreparedStatement st;
		st = con.prepareStatement("select * from teacher where name=? and password=?");
		st.setString(1, name);
		st.setString(2, password);
		ResultSet rs = st.executeQuery();

		if (rs.next()) {
			customer = new Customer();
			customer.setId(rs.getInt("id"));
			customer.setLogin(rs.getString("name"));
			customer.setPassword(rs.getString("password"));
		}

		st.close();
		con.close();

		return customer;
	}
}

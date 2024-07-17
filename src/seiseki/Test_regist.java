package seiseki;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.InitialContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import tool.CommonServlet;
import tool.Page;


@WebServlet(urlPatterns={"/seiseki/Test_regist"})
public  abstract class Test_regist extends CommonServlet {
	public void doGet (
			HttpServletRequest request, HttpServletResponse response
		) throws ServletException, IOException {
			PrintWriter out=response.getWriter();
			Page.header(out);
			try {
				InitialContext ic=new InitialContext();
				// db javasd にアクセスする為の context.xmlを呼び出す
				DataSource ds=(DataSource)ic.lookup(
					"java:/comp/env/jdbc/javasd");//context.xml name属性を紐づける
				// DataSourceのgetCOnnectionメソッドを使ってDBと接続
				Connection con=ds.getConnection();
				// DBに向けて送るSQLを記述
				PreparedStatement st=con.prepareStatement(
				"SELECT * FROM STUDENT");
				// SQLの実行 結果をResultSet型のrs に格納
				ResultSet rs=st.executeQuery();
				List<String> errorMessages = new ArrayList<>();
				errorMessages.add("0～100の範囲で入力してください");

			}
	}
}




package bean;

import java.io.Serializable;

public class Customer implements Serializable {
	private int id;
	private String name;
	private String password;

	public int getId() {
		return id;
	}

	public String getLogin() {
		return name;
	}

	public String getPassword() {
		return password;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setLogin(String name) {
		this.name = name;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}

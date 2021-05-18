package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import dao.PaymentDbConnection;

public class UpdateUser extends PaymentDbConnection {

	
	private static final String UPDATE_USERS_SQL = "update user_detail set accountNumber=?,name=?, phoneNumber=?,district=? where id=?;";

	public boolean updateUser(User user) throws SQLException {
		boolean rowUpdated;
		try (Connection connection = getConnection();
				PreparedStatement statement = connection.prepareStatement(UPDATE_USERS_SQL);) {
			statement.setString(1, user.getAccountNum());
			statement.setString(2, user.getName());
			statement.setString(3, user.getPhoneNumber());
			statement.setString(4, user.getDistrict());
			statement.setInt(5, user.getId());
			
			rowUpdated = statement.executeUpdate() > 0;
		}
		return rowUpdated;
	}

	

}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.User;

/**
 *
 * @author giang
 */
public class UserDAO extends DBContext {

    public User getUser(String email, String password) {

        try {
            String sql = "SELECT [email]\n"
                    + "      ,[password]\n"
                    + "      ,[address]\n"
                    + "      ,[dob]\n"
                    + "      ,[gender]\n"
                    + "      ,[phoneNumber]\n"
                    + "  FROM [dbo].[user]\n"
                    + "  WHERE email = ? AND password = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, email);
            statement.setString(2, password);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                User u = new User();
                u.setEmail(rs.getString("email"));
                u.setPassword(rs.getString("password"));
                u.setAddress(rs.getString("address"));
                u.setDob(rs.getDate("dob"));
                u.setGender(rs.getBoolean("gender"));
                u.setPhoneNumber(rs.getString("phoneNumber"));
                return u;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;
    }

    public void registerUser(User s) {
        String sql = "INSERT INTO [dbo].[user]\n"
                + "           ([email]\n"
                + "           ,[password]\n"
                + "           ,[address]\n"
                + "           ,[dob]\n"
                + "           ,[gender]\n"
                + "           ,[phoneNumber])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?)";
        try {
            PreparedStatement stm_insert_user = connection.prepareStatement(sql);
            stm_insert_user.setString(1, s.getEmail());
            stm_insert_user.setString(2, s.getPassword());
            stm_insert_user.setString(3, s.getAddress());
            stm_insert_user.setDate(4, s.getDob());
            stm_insert_user.setBoolean(5, s.isGender());
            stm_insert_user.setString(6, s.getPhoneNumber());
            stm_insert_user.executeUpdate();
        } catch (SQLException ex) {
            java.util.logging.Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}

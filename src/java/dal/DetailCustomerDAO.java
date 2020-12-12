/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.DetailCustomer;

/**
 *
 * @author giang
 */
public class DetailCustomerDAO extends DBContext {

    public void insertCustomer(DetailCustomer dc) {
        String sql_insert_student = "INSERT INTO [detailCustomer]\n"
                + "           ([email]\n"
                + "           ,[name]\n"
                + "           ,[gender]\n"
                + "           ,[dob]\n"
                + "           ,[singleRoom]\n"
                + "           ,[tourId])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?)";
        try {
            PreparedStatement stm_insert
                    = connection.prepareStatement(sql_insert_student);
            stm_insert.setString(1, dc.getEmail());
            stm_insert.setString(2, dc.getName());
            stm_insert.setBoolean(3, dc.isGender());
            stm_insert.setDate(4, dc.getDob());
            stm_insert.setBoolean(5, dc.isSingleRoom());
            stm_insert.setString(6, dc.getTourId());
            stm_insert.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DetailCustomerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList<DetailCustomer> getCustomerById(String tourID) {
        ArrayList<DetailCustomer> customers = new ArrayList<>();
        String sql = "SELECT "
                + "      [email]\n"
                + "      ,[name]\n"
                + "      ,[gender]\n"
                + "      ,[dob]\n"
                + "      ,[singleRoom]\n"
                + "      ,[tourId]\n"
                + "  FROM [ProjectJavaWeb].[dbo].[detailCustomer]\n"
                + "  WHERE tourId = ?";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, tourID);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                DetailCustomer dt = new DetailCustomer();
                dt.setEmail(rs.getString("email"));
                dt.setName(rs.getString("name"));
                dt.setGender(rs.getBoolean("gender"));
                dt.setDob(rs.getDate("dob"));
                dt.setSingleRoom(rs.getBoolean("singleRoom"));
                dt.setTourId(rs.getString("tourID"));
                customers.add(dt);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DetailCustomerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return customers;

    }
}

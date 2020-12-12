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
import model.Booking;

/**
 *
 * @author giang
 */
public class BookingDAO extends DBContext{
    
    public ArrayList<Booking> getBookingByTid(String tid) {
        ArrayList<Booking> listTour = new ArrayList<>();
        String sql = "SELECT [bid]\n" +
                    "      ,[tid]\n" +
                    "      ,[email]\n" +
                    "      ,[bookingDate]\n" +
                    "  FROM [booking]\n" +
                    "  WHERE tid = ?";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, tid);
            ResultSet rs = stm.executeQuery();
            while(rs.next()) {
                Booking b = new Booking();
                b.setBid(rs.getString("bid"));
                b.setTid(rs.getString("tid"));
                b.setEmail(rs.getString("email"));
                b.setBookingDate(rs.getDate("bookingDate"));
                listTour.add(b);
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(BookingDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listTour;
    }
}

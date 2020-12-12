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
import model.Tour;

/**
 *
 * @author giang
 */
public class TourDAO extends DBContext {

    public ArrayList<Tour> getTours() {
        ArrayList<Tour> tours = new ArrayList<>();
        String sql = "SELECT [image]\n"
                + "      ,[title]\n"
                + "      ,[tourID]\n"
                + "      ,[fromDate]\n"
                + "      ,[toDate]\n"
                + "      ,[price]\n"
                + "      ,[startPlace]\n"
                + "      ,[detailTimeline]\n"
                + "  FROM [tour]";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Tour t = new Tour();
                t.setImage(rs.getString("image"));
                t.setTitle(rs.getString("title"));
                t.setTourID(rs.getString("tourID"));
                t.setFromDate(rs.getDate("fromDate"));
                t.setToDate(rs.getDate("toDate"));
                t.setPrice(rs.getInt("price"));
                t.setStartPlace(rs.getString("startPlace"));
                t.setDetailTimeline(rs.getString("detailTimeline"));
                tours.add(t);
            }
        } catch (SQLException ex) {
            Logger.getLogger(TourDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return tours;
    }

    public ArrayList<Tour> getPages(int pageindex, int pagesize) {
        ArrayList<Tour> tourss = new ArrayList<>();
        String sql = "SELECT [image]\n"
                + "      ,[title]\n"
                + "      ,[tourID]\n"
                + "      ,[fromDate]\n"
                + "      ,[toDate]\n"
                + "      ,[price]\n"
                + "      ,[startPlace]\n"
                + "      ,[detailTimeline]\n"
                + "  FROM (SELECT ROW_NUMBER() OVER (ORDER BY tourID ASC) AS rid, tourID, title, [image], fromDate, toDate, price, startPlace, DetailTimeline FROM [dbo].[tour]) TblData\n"
                + "  WHERE rid >= (?-1)*?+1\n"
                + "  AND rid <= ? * ?";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, pageindex);
            stm.setInt(2, pagesize);
            stm.setInt(3, pageindex);
            stm.setInt(4, pagesize);

            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Tour t = new Tour();
                t.setImage(rs.getString("image"));
                t.setTitle(rs.getString("title"));
                t.setTourID(rs.getString("tourID"));
                t.setFromDate(rs.getDate("fromDate"));
                t.setToDate(rs.getDate("toDate"));
                t.setPrice(rs.getInt("price"));
                t.setStartPlace(rs.getString("startPlace"));
                t.setDetailTimeline(rs.getString("detailTimeline"));
                tourss.add(t);
            }
        } catch (SQLException ex) {
            Logger.getLogger(TourDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return tourss;
    }

    public int count() {
        ArrayList<Tour> tours = new ArrayList<>();
        try {
            String sql = "SELECT COUNT(*) as TotalRow FROM tour";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                return rs.getInt("TotalRow");
            }
        } catch (SQLException ex) {
            Logger.getLogger(TourDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    public Tour getTourByID(String tourID) {
        Tour t = new Tour();
        String sql = "SELECT [image]\n"
                + "      ,[title]\n"
                + "      ,[tourID]\n"
                + "      ,[fromDate]\n"
                + "      ,[toDate]\n"
                + "      ,[price]\n"
                + "      ,[startPlace]\n"
                + "      ,[detailTimeline]\n"
                + "  FROM [tour]\n"
                + "  WHERE tourID = ?";
        PreparedStatement stm;
        try {
            stm = connection.prepareStatement(sql);
            stm.setString(1, tourID);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                t.setImage(rs.getString("image"));
                t.setTitle(rs.getString("title"));
                t.setTourID(rs.getString("tourID"));
                t.setFromDate(rs.getDate("fromDate"));
                t.setToDate(rs.getDate("toDate"));
                t.setPrice(rs.getInt("price"));
                t.setStartPlace(rs.getString("startPlace"));
                t.setDetailTimeline(rs.getString("detailTimeline"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(TourDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return t;
    }   
}

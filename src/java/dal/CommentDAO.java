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
import model.CommentTour;

/**
 *
 * @author giang
 */
public class CommentDAO extends DBContext {

    public void insertComment(CommentTour cmt) {
        String sql = "INSERT INTO [dbo].[comment]\n"
                + "           ([id]\n"
                + "           ,[content]\n"
                + "           ,[createdDate]\n"
                + "           ,[tid]\n"
                + "           ,[email])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?)";
        try {
            PreparedStatement stm_insert = connection.prepareStatement(sql);
            stm_insert.setInt(1, cmt.getId());
            stm_insert.setString(2, cmt.getContent());
            stm_insert.setDate(3, cmt.getCreatedDate());
            stm_insert.setString(4, cmt.getTid());
            stm_insert.setString(5, cmt.getEmail());
            stm_insert.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CommentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList<CommentTour> getCommentsByTid(String tid) {
        ArrayList<CommentTour> comments = new ArrayList<>();
        String sql_select_cmt = "SELECT [id]\n"
                + "      ,[content]\n"
                + "      ,[createdDate]\n"
                + "      ,[tid]\n"
                + "      ,[email]\n"
                + "  FROM [comment]\n"
                + "  WHERE [tid] = ?";
        try {
            PreparedStatement statement
                    = connection.prepareStatement(sql_select_cmt);
            statement.setString(1, tid);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                CommentTour cmt = new CommentTour();
                cmt.setId(rs.getInt("id"));
                cmt.setContent(rs.getString("content"));
                cmt.setCreatedDate(rs.getDate("createdDate"));
                cmt.setTid(rs.getString("tid"));
                cmt.setEmail(rs.getString("email"));
                comments.add(cmt);
            }
        } catch (SQLException ex) {
            Logger.getLogger(CommentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return comments;
    }

    public int numOfCid(String tid) {
        return getCommentsByTid(tid).size();
    }
}

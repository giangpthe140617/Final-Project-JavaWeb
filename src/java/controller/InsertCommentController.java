/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.CommentDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.Calendar;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.CommentTour;
import model.User;

/**
 *
 * @author giang
 */
public class InsertCommentController extends HttpServlet {

    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("tourDetail").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String tid = request.getParameter("add");        
        String comment = request.getParameter(tid);
        String email = ((User)request.getSession().getAttribute("user")).getEmail();
        
        CommentTour cmt = new CommentTour();       
        CommentDAO db = new CommentDAO();
        cmt.setId(db.numOfCid(tid));
        cmt.setContent(comment);
        cmt.setTid(tid);        
        cmt.setEmail(email);        
        cmt.setCreatedDate(new Date(Calendar.getInstance().getTime().getTime()));
        db.insertComment(cmt);   
        request.setAttribute("id", tid);
        request.getRequestDispatcher("tourDetail").forward(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

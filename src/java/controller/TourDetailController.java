/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.CommentDAO;
import dal.TourDAO;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.CommentTour;
import model.Tour;

/**
 *
 * @author giang
 */
public class TourDetailController extends BaseRequiredAuthenticationController {

    @Override
    protected void processGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    }

    
    @Override
    protected void processPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        if (id == null) {
            id = request.getAttribute("id").toString();
        }
        Tour tour = new TourDAO().getTourByID(id);
        request.setAttribute("tour", tour);       
        ArrayList<CommentTour> cmts = new CommentDAO().getCommentsByTid(id);
        request.setAttribute("cmts", cmts);       
        request.getRequestDispatcher("tourDetail.jsp").forward(request, response);
    }

    
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.TourDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.lang.IllegalStateException;
import java.util.ArrayList;
import model.Tour;
import model.User;

/**
 *
 * @author giang
 */
public class MainScreenController extends BaseRequiredAuthenticationController {

    @Override
    protected void processGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        TourDAO db = new TourDAO();
        int pagesize = 3;
        String page = request.getParameter("page");
        if (page == null) {
            page = "1";
        }
        int pageindex = Integer.parseInt(page);

        int totalRow = db.count();
        int totalPage = (totalRow % pagesize == 0) ? totalRow / pagesize
                : totalRow / pagesize + 1;
        ArrayList<Tour> tours = db.getPages(pageindex, pagesize);

        request.setAttribute("tours", tours);
        request.setAttribute("totalpage", totalPage);
        request.setAttribute("pageindex", pageindex);

        request.getRequestDispatcher("tour.jsp").forward(request, response);
    }

    @Override
    protected void processPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("tour.jsp").forward(request, response);
    }
}

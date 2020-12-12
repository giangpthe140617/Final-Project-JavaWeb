/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.DetailCustomerDAO;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.DetailCustomer;

/**
 *
 * @author giang
 */
public class ListCustomer extends BaseRequiredAuthenticationController {

    @Override
    protected void processGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<DetailCustomer> customers = (ArrayList) request.getSession().getAttribute("customers");
        if (request.getParameter("cbxConfirm") == null) {
            String tourId = request.getParameter("tourId");
            request.setAttribute("tourId", tourId);
            request.setAttribute("size", customers.size());
            request.getRequestDispatcher("insertCustomerDetail.jsp").forward(request, response);
        } else {
            DetailCustomerDAO db = new DetailCustomerDAO();
            for (DetailCustomer customer : customers) {
                db.insertCustomer(customer);
            }
            response.sendRedirect("mainScreen");
        }
    }

    @Override
    protected void processPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String tourId = request.getAttribute("tourId").toString();
        request.setAttribute("tourId", tourId);
        request.getRequestDispatcher("listCustomer.jsp").forward(request, response);

    }

}

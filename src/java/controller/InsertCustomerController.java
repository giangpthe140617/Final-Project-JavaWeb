/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.DetailCustomerDAO;
import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.DetailCustomer;
import model.User;

/**
 *
 * @author giang
 */
public class InsertCustomerController extends BaseRequiredAuthenticationController {

    @Override
    protected void processGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String tourId = request.getParameter("tourId");
        request.setAttribute("tourId", tourId);
        request.setAttribute("size", 0);        
        request.getRequestDispatcher("insertCustomerDetail.jsp").forward(request, response);
    }

    @Override
    protected void processPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int size = Integer.parseInt(request.getParameter("num"));
        ArrayList<DetailCustomer> customers = new ArrayList<>();
        for (int i = 0; i < size; i++) {
            String email = ((User) request.getSession().getAttribute("user")).getEmail();
            String name = request.getParameter("cname" + i);      
            String sDob = request.getParameter("cdob" + i);
            Date dob = Date.valueOf(sDob);
            boolean gender = "Male".equalsIgnoreCase(request.getParameter("gender" + i));
            boolean isSingleRoom = "Single".equalsIgnoreCase(request.getParameter("roomType" + i));
            String tourId = request.getParameter("tourId");
            DetailCustomer dc = new DetailCustomer(email, name, gender, dob, isSingleRoom, tourId);
            customers.add(dc);
        }        
        request.setAttribute("tourId", request.getParameter("tourId"));
        request.getSession().setAttribute("customers", customers);
        request.getRequestDispatcher("list").forward(request, response);
    }

}

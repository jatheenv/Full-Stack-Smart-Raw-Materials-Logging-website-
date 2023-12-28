package com.jatheen.registration;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/MaterialFormServlet")
public class MaterialFormServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve form parameters
        String productName = request.getParameter("productName");
        String price = request.getParameter("price");
        String vendorName = request.getParameter("vendorName");
        String quantity = request.getParameter("quantity");

        // JDBC Connection
        try {
            // Load the JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Database connection details
            String url = "jdbc:mysql://localhost:3306/Project_RINL";
            String user = "root";
            String password = "Jatheen@2003";

            // Establish the database connection
            try (Connection conn = DriverManager.getConnection(url, user, password)) {
                // SQL query to insert data into the table
                String sql = "INSERT INTO material_info (product_name, price, vendor_name, quantity) VALUES (?, ?, ?, ?)";
                
                // Create a PreparedStatement to execute the query
                try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
                    // Set parameters for the PreparedStatement
                    pstmt.setString(1, productName);
                    pstmt.setString(2, price);
                    pstmt.setString(3, vendorName);
                    pstmt.setString(4, quantity);

                    // Execute the update (insert) operation
                    pstmt.executeUpdate();
                }
            }
        } catch (ClassNotFoundException | SQLException e) {
            // Handle any exceptions (printStackTrace is used for illustration, handle it according to your needs)
            e.printStackTrace();
        }

        // Redirect to a confirmation page or wherever you want after form submission
        response.sendRedirect("confirmation.jsp");
    }
}

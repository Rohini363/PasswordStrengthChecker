package com.example;

import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;

public class PasswordStrengthServlet extends HttpServlet {
    
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String password = request.getParameter("password");
        String strength = evaluatePassword(password);

        request.setAttribute("password", password);
        request.setAttribute("strength", strength);
        RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
        rd.forward(request, response);
    }

    private String evaluatePassword(String password) {
        int score = 0;

        if (password.length() >= 8) score++;
        if (password.matches(".*[A-Z].*")) score++;
        if (password.matches(".*[a-z].*")) score++;
        if (password.matches(".*\\d.*")) score++;
        if (password.matches(".*[!@#$%^&*()_+\\-=\\[\\]{};':\"\\\\|,.<>/?].*")) score++;

        switch (score) {
            case 5: return "Very Strong";
            case 4: return "Strong";
            case 3: return "Moderate";
            case 2: return "Weak";
            default: return "Very Weak";
        }
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Optional: redirect to the form page
        response.sendRedirect("index.jsp");
    }

}

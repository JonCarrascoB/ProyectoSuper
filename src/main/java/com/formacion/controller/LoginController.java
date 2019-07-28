package com.formacion.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.formacion.controller.pojo.Alert;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	public static final String VIEW_BACKOFFICE = "backoffice/products";
	public static final String VIEW_LOGIN = "login.jsp";
	
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String usuario = request.getParameter("email");
		String password = request.getParameter("contrasena");
		
		if("admin@email.com".equals(usuario) && "admin".contentEquals(password)) {
			HttpSession session = request.getSession();
			
			session.setAttribute("usuario", "usuario"+ request.getRemoteAddr());
			request.setAttribute("mensaje", new Alert("success", "Bienvenido " + usuario));
			
			String callback = (String) session.getAttribute("callback");
			
			if (callback == null) {
				request.getRequestDispatcher(VIEW_BACKOFFICE).forward(request, response);
			} else {
				session.removeAttribute("callback");
				response.sendRedirect(callback);
			}	
		} else {
			request.setAttribute("mensaje", new Alert("danger", "Credenciales no correctas"));
			request.getRequestDispatcher(VIEW_LOGIN).forward(request, response);
		}
	}

}

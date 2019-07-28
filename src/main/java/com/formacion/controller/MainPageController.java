package com.formacion.controller;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Validation;
import javax.validation.Validator;

import com.formacion.model.dao.ProductsDAO;

/**
 * Servlet implementation class MainPageController
 */
@WebServlet("/mainpage")
public class MainPageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	public static final String VIEW_INDEX = "index.jsp";
	
	public static final String OP_LISTAR = "0";
	public static final String OP_CREARNUEVO = "1";
	
	
	private static ProductsDAO productsDAO;
	private Validator validator;
	
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		productsDAO = ProductsDAO.getInstance();
		validator = Validation.buildDefaultValidatorFactory().getValidator();
	}
	

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}


	private void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String option = request.getParameter("op");
		
		if (option == null) {
			option = OP_LISTAR;
		}
		switch (option) {
			case OP_CREARNUEVO:
				
				break;
			default:
				listar(request,response);
				break;
		}
		
		// request interna o ir a una JSP
		request.getRequestDispatcher(VIEW_INDEX).forward(request, response);
		
	}


	private void listar(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("productos", productsDAO.getAll() );
		
	}

}

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
 * Servlet implementation class ProductsController
 */
@WebServlet("/products")
public class ProductsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	
	public static final String OP_LISTAR = "0";
	public static final String OP_CREARNUEVO = "1";
	public static final String OP_GUARDAR = "2";
	public static final String OP_MODIFICAR = "3";
	public static final String OP_DETALLE = "4";
	public static final String OP_ELIMINAR = "5";
	
       
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
	
	private void doProcess(HttpServletRequest request, HttpServletResponse response) {
		
String option = request.getParameter("op");
		
		if (option == null) {
			option = OP_LISTAR;
		}
		switch (option) {
			case OP_CREARNUEVO:
				crearNuevo(request,response);
				break;
			case OP_GUARDAR:
				guardar(request,response);
				break;
			case OP_MODIFICAR:
				modificar(request, response);
				break;
			case OP_DETALLE:
				detallar(request,response);
				break;
			case OP_ELIMINAR:
				eliminar(request,response);
				break;
			default:
				listar(request,response);
				break;
		}
		
	}


}

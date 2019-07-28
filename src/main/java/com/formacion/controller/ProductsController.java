package com.formacion.controller;

import java.io.IOException;
import java.util.Set;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.Validator;

import com.formacion.model.dao.ProductsDAO;
import com.formacion.model.pojo.Producto;
import com.formacion.controller.pojo.Alert;


/**
 * Servlet implementation class ProductsController
 */
@WebServlet("/backoffice/products")
public class ProductsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public static final String VIEW_INDEX = "workersField/listadoProductos.jsp";
	public static final String VIEW_FORM = "workersField/formulario.jsp";
	public static String view = VIEW_INDEX;
	
	public static final String OP_LISTAR = "0";
	public static final String OP_CREARNUEVO = "1";
	public static final String OP_GUARDAR = "2";
	public static final String OP_MODIFICAR = "3";
	public static final String OP_ELIMINAR = "4";
	
       
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
				crearNuevo(request,response);
				break;
			case OP_GUARDAR:
				guardar(request,response);
				break;
			case OP_MODIFICAR:
				modificar(request, response);
				break;
			case OP_ELIMINAR:
				eliminar(request,response);
				break;
			default:
				listar(request,response);
				break;
		}
		
		// request interna o ir a una JSP
		request.getRequestDispatcher(view).forward(request, response);
		
	}

	private void listar(HttpServletRequest request, HttpServletResponse response) {
		
		request.setAttribute("productos", productsDAO.getAll() );
		view = VIEW_INDEX;
		
	}

	private void eliminar(HttpServletRequest request, HttpServletResponse response) {
		
		String sid = request.getParameter("id");
		int id = Integer.parseInt(sid);
		
		if (productsDAO.delete(id)) {
			request.setAttribute("mensaje", new Alert("succes", "El video ha sido eliminado correctamente"));
			listar(request,response);
		} else {
			request.setAttribute("mensaje", new Alert("danger", "Ha ocurrido un fallo en la eliminacion del video"));
			listar(request,response);
		}
		
	}

	private void modificar(HttpServletRequest request, HttpServletResponse response) {
		
		String sid = request.getParameter("id");
		int id = Integer.parseInt(sid);
		
		Producto p = ProductsDAO.getById(id);
		request.setAttribute("producto", p );
		view = VIEW_FORM;
		
	}

	private void guardar(HttpServletRequest request, HttpServletResponse response) {
		
		String sid = request.getParameter("id");
		String nombre = request.getParameter("nombre");
		String precio = request.getParameter("precio");
		String descuento = request.getParameter("descuento");
		String stock = request.getParameter("stock");
		
		
		Producto p = new Producto();
		p.setId(Integer.parseInt(sid));
		p.setNombre(nombre);
		p.setPrecio(Float.parseFloat(precio));
		p.setDescuento(Boolean.parseBoolean(descuento));
		p.setStock(Integer.parseInt(stock));
		
		Set<ConstraintViolation<Producto>> violations = validator.validate(p);
		if (violations.isEmpty()) {
		
			try {
				if (p.getId() == -1) {
					productsDAO.crear(p);
				} else {
					productsDAO.modificar(p);
				}
				request.setAttribute("mensaje", new Alert("success", "El nuevo nombre ha sido guardado correctamente"));
			
			} catch (Exception e) {
				e.printStackTrace();
				request.setAttribute("mensaje", new Alert("danger", "Ha habido un problema, el codigo ya existe."));
			}
		} else {//hay violaciones de las validaciones
			
			String mensaje = "";
			for (ConstraintViolation<Producto> violation : violations) {
				mensaje += violation.getPropertyPath()+": "+violation.getMessage()+"<br>";
			}
			request.setAttribute("mensaje", new Alert("warning", mensaje));
		}
		
		request.setAttribute("producto", p );
		view = VIEW_FORM;
		
	}

	private void crearNuevo(HttpServletRequest request, HttpServletResponse response) {
		
		request.setAttribute("producto", new Producto());
		view = VIEW_FORM;
		
	}


}

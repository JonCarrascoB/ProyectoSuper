<%@page import="com.formacion.controller.ProductsController"%>
<%@include file="../../includes/header.jsp"%>
<%@include file="../../includes/navbar.jsp"%>

		  
	<h1>Listado de Productos</h1>
	
	<%@include file="../../includes/mensaje.jsp"%>
	
	<form class="form-inline mb-2" action="crearVideo" method="get">
		<label class="sr-only" for="buscar">Producto:</label>
		<input class="form-control col-md-4" type="search" name="buscar" id="buscar" value="${buscar}" placehorder="Inserte el producto a buscar" required>
		<button class="btn btn-primary ml-2" type="submit"><i class="fas fa-search"></i></button>
		<a href="backoffice/products?op=<%=ProductsController.OP_CREARNUEVO%>" class="btn btn-primary ml-2 mb-1">+ Nuevo Producto</a>
	</form>
	
	<table class="table">
  		<thead>
    		<tr>
    			<th scope="col"></th>
      			<th scope="col">ID</th>
      			<th scope="col">Nombre</th>
      			<th scope="col">Precio</th>
      			<th scope="col">Descuento</th>
      			<th scope="col">Stock</th>
      			<th scope="col"></th>
      			<th scope="col"></th>
    		</tr>
  		</thead>
  		<tbody>
    			<c:forEach items="${productos}" var="p">
					<tr>
						<th scope="row"></th>
						<th>${p.id}</th>
						<td>${p.nombre}</td>
						<td>${p.precio}</td>
						<td>${p.descuento}</td>
						<td>${p.stock}</td>
						<td><a class="btn btn-primary btn-block mb-2" href="backoffice/products?op=<%=ProductsController.OP_MODIFICAR%>&id=${v.id}"><i class="fas fa-edit"></i></a></td>
      					<td>
      						<!-- Button trigger modal -->
      						<button type="button" class="btn btn-danger btn-block mb-2" data-toggle="modal" data-target="#exampleModal"><i class="fas fa-trash-alt"></i></button>
      						
      						<!-- Modal -->
      						<div class="modal" id="exampleModal" tabindex="-1" role="dialog">
  								<div class="modal-dialog" role="document">
    								<div class="modal-content">
      									<div class="modal-header">
        									<h5 class="modal-title">¿Estas seguro que deseas eliminar el producto?</h5>
        									<button type="button" class="close" data-dismiss="modal" aria-label="Close">
          										<span aria-hidden="true">&times;</span>
        									</button>
      									</div>
      									<div class="modal-body">
        									<p>Esta operación no es reversible</p>
      									</div>
      									<div class="modal-footer">
        									<button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
        									<a class="btn btn-danger btn-block mb-2" href="backoffice/products?op=<%=ProductsController.OP_ELIMINAR%>&id=${v.id}"><i class="fas fa-trash-alt"></i></a>
      									</div>
    								</div>
  								</div>
							</div>
      					
      					</td>
					</tr>
				</c:forEach>
		</tbody>
	</table>

<%@include file="../../includes/footer.jsp"%> 
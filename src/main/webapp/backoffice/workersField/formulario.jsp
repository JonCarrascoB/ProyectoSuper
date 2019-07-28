<%@page import="com.formacion.controller.ProductsController"%>
<%@include file="../../includes/header.jsp"%>
<%@include file="../../includes/navbar.jsp"%>

		<form action="backoffice/products" method="POST">
			<div class="form-group">
	    		<input type="hidden" class="form-control" name="op" value="<%=ProductsController.OP_GUARDAR%>">
	  		</div>
	  		<div class="form-group">
	    		<label for="id">ID</label>
	    		<input type="text" class="form-control" name="id" id="id" value="${producto.id}" readonly">
	  		</div>
            <div class="form-group">
                <label for="nombre">Producto</label>
                <input type="text" class="form-control" name="nombre" id="nombre" value="${producto.nombre}" placeholder="Minimo 2 letras maximo 150" required>
            </div>
            <div class="form-group">
                <label for="precio">Precio</label>
                <input type="number" class="form-control" name="precio" id="precio" value="${producto.precio}" step="0.01" required>
            </div>
            <div class="form-group form-check">
                <input type="checkbox" class="form-check-input" name="descuento" id="descuento" value="${producto.descuento}">
                <label class="form-check-label" for="descuento">¿Tiene descuento?</label>
            </div>
            <div class="form-group">
                <label for="stock">Numero de Unidades en stock: </label>
                <input type="number" class="form-control" name="stock" id="stock" value="${producto.stock}" step="1" required>
            </div>
            <input type="submit" id="btnSave" class="btn-outline-primary btn-block" value="${(producto.id != -1)? 'Modificar':'Crear'}">
        </form>


<%@include file="../../includes/footer.jsp"%>
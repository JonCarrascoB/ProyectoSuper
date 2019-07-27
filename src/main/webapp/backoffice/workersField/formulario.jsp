<%@include file="../../includes/header.jsp"%>
<%@include file="../../includes/navbar.jsp"%>

		<form action="login" method="POST">
            <div class="form-group">
                <label for="nombre">Producto</label>
                <input type="text" class="form-control" name="nombre" id="nombre" placeholder="Minimo 2 letras maximo 150" required
                    pattern=".{2,150}">
            </div>
            <div class="form-group">
                <label for="precio">Precio</label>
                <input type="number" class="form-control" name="precio" id="precio" value="0" step="0.01" required pattern="[0-9]">
            </div>
            <div class="form-group form-check">
                <input type="checkbox" class="form-check-input" name="descuento" id="descuento">
                <label class="form-check-label" for="descuento">¿Tiene descuento?</label>
            </div>
            <div class="form-group">
                <label for="stock">Numero de Unidades en stock: </label>
                <input type="number" class="form-control" name=""stock id="stock" value="0" step="1" required pattern="[0-9]">
            </div>
            <button type="submit" class="btn btn-primary">Guardar</button>
            <button type="reset" class="btn btn-primary">Eliminar</button>
        </form>


<%@include file="../../includes/footer.jsp"%>
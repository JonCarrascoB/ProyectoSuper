<%@include file="../../includes/header.jsp"%>
<%@include file="../../includes/navbar.jsp"%>

		<div class="input-group mb-3">
            <div class="input-group-prepend">
                <button class="btn btn-outline-secondary" type="button" id="button-addon1">Buscar</button>
            </div>
            <input type="text" class="form-control" placeholder="Minimo 2 letras maximo 150" required
                pattern=".{2,150}">
        </div>
        <table class="table">
            <thead class="thead-dark">
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Producto</th>
                    <th scope="col">Precio</th>
                    <th scope="col">Descuento</th>
                    <th scope="col">Stock</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">1</th>
                    <td>Beefheater</td>
                    <td>13.35€</td>
                    <td>No</td>
                    <td>63 unidades</td>
                </tr>
                <tr>
                    <th scope="row">2</th>
                    <td>Beefheater</td>
                    <td>12.95€</td>
                    <td>Si</td>
                    <td>56 unidades</td>
                </tr>
                <tr>
                    <th scope="row">3</th>
                    <td>Durex</td>
                    <td>52.95€</td>
                    <td>No</td>
                    <td>3 unidades</td>
                </tr>
            </tbody>
        </table>


<%@include file="../../includes/footer.jsp"%> 
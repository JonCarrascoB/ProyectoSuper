<%@include file="../includes/header.jsp"%>
<%@include file="../includes/navbar.jsp"%>

	<form action="login" method="POST">
            <div class="form-group">
                <label for="email">Correo Electronico</label>
                <input type="email" class="form-control" name="email" id="email" placeholder="name@email.com" aria-describedby="emailHelp" required
                    pattern="/^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/">
            </div>
            <div class="form-group">
                <label for="contraseña">Contraseña</label>
                <input type="password" class="form-control" name="contraseña" id="contraseña" required pattern="/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,12}">
            </div>
            <button type="submit" class="btn btn-primary">Sing in</button>
        </form>


<%@include file="../includes/footer.jsp"%> 
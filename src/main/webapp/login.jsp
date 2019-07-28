<%@include file="../includes/header.jsp"%>
<%@include file="../includes/navbar.jsp"%>

	<form action="login" method="post">
            <div class="form-group">
                <label for="email">Correo Electronico</label>
                <input type="text" class="form-control" name="email" id="email" placeholder="name@email.com" aria-describedby="emailHelp" required>
            </div>
            <div class="form-group">
                <label for="contrasena">Password</label>
                <input type="password" class="form-control" name="contrasena" id="contrasena" required>
            </div>
            <button type="submit" class="btn btn-primary">Sing in</button>
        </form>


<%@include file="../includes/footer.jsp"%> 
<%@page import="com.formacion.controller.MainPageController"%>
<nav class="navbar navbar-expand-lg navbar-secondary fixed-top">
      <a class="navbar-brand" href="mainpage?op=<%=MainPageController.OP_LISTAR%>"><i class="fas fa-globe"></i> IparMarket </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
           <span class="navbar-toggler-icon"><i class="fas fa-bars"></i></span>
       </button>
       <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
                 <a class="nav-item nav-link active" href="mainpage?op=<%=MainPageController.OP_LISTAR%>">Pagina Principal <span class="sr-only">(current)</span></a>
  				 <c:if test="${usuario != null }">
	      			<li class="nav-item active">
	      				<a class="nav-item nav-link" href="backoffice/listadoProductos.jsp">Listado de productos</a>
	      			</li>	
      			</c:if> 
                    
            </div>
            </div>
            <c:if test="${usuario == null }">
      			<a class="nav-link text-dark" href="login.jsp">Login <span class="sr-only">(current)</span><i class="fas fa-user"></i></a>
      			<a class="nav-link text-dark" href="user">Sign in <span class="sr-only">(current)</span><i class="fas fa-sign-in-alt"></i></a>
      		</c:if>
        	<c:if test="${usuario != null }">
        		<span class="text-dark">${usuario}</span>
      			<a class="nav-link text-dark" href="logout">Logout <span class="sr-only">(current)</span><i class="fas fa-sign-out-alt"></i></a>
      		</c:if>
        </div>
    </nav>
    
    <main class="container">
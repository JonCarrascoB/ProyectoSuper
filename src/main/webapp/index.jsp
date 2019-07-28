<%@include file="../includes/header.jsp"%>
<%@include file="../includes/navbar.jsp"%>

 <div class="row">
 	<div class="col-sm-12 col-md-1"></div>
 	<c:forEach items="${productos}" var="p">
 		<div class="col-sm-12 col-md-2">
 			 <section class="p-4 m-4 bg-light shadow">
 			 	<c:if test="${p.descuento == true }">
 			 		<span class="badge badge-danger descuentoB">20%</span>
 			 	</c:if>
 			 	<img alt="${p.nombre}" id="producto1" src="resources/images/products/${p.nombre}.jpg">
 			 	<p>${p.precio}€</p>
 			 	<p>${p.nombre}, botella 70cl</p>
 			 	<div class="input-group mb-3 input-group-rounded-pill">
                        <div class="input-group-prepend">
                            <button class="btn btn-outline-secondary" type="button" id="btn-resta">-</button>
                        </div>
                        <p class="productNum">1</p>
                        <div class="input-group-append">
                            <button class="btn btn-outline-secondary" type="button" id="btn-suma">+</button>
                        </div>
                 </div>
                 <button type="submit" class="btn btn-success btn-block">Añadir al carro</button>
 			 </section>
 		</div>
 	</c:forEach>
 	<div class="col-sm-12 col-md-1"></div>
 </div>
 
 <!--  
            <div class="col-sm-12 col-md">
                <section p-4 m-4 bg-light>
                    <span class="badge badge-danger descuentoB">20%</span>
                    <img alt="Beefeater" id="producto1" src="img/beefeater2.jpg">
                    <p><span class="precioTachado">13.35€</span><span class="precioNuevo">12.95€</span></p>
                    <p class="text-muted precioBase">(18.90€/litro)</p>
                    <p>BEEFEATER ginebra inglesa botella 70cl</p>
                    <div class="input-group mb-3 input-group-rounded-pill">
                        <div class="input-group-prepend">
                            <button class="btn btn-outline-secondary" type="button" id="btn-resta">-</button>
                        </div>
                        <p class="productNum">1</p>
                        <div class="input-group-append">
                            <button class="btn btn-outline-secondary" type="button" id="btn-suma">+</button>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-success">Añadir al carro</button>
                </section>
            </div>
            <div class="col-sm-12 col-md">
                <section p-4 m-4 bg-light>
                    <img alt="Beefeater" id="producto1" src="img/beefeater2.jpg">
                    <p><span class="precioTachado">13.35€</span><span class="precioNuevo">12.95€</span></p>
                    <p class="text-muted precioBase">(18.90€/litro)</p>
                    <p>BEEFEATER ginebra inglesa botella 70cl</p>
                    <div class="input-group mb-3 input-group-rounded-pill">
                        <div class="input-group-prepend">
                            <button class="btn btn-outline-secondary" type="button" id="btn-resta">-</button>
                        </div>
                        <p class="productNum">1</p>
                        <div class="input-group-append">
                            <button class="btn btn-outline-secondary" type="button" id="btn-suma">+</button>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-success">Añadir al carro</button>
                </section>
            </div>
            <div class="col-sm-12 col-md">
                <section p-4 m-4 bg-light>
                    <span class="badge badge-danger descuentoB">20%</span>
                    <img alt="Beefeater" id="producto1" src="img/beefeater2.jpg">
                    <p><span class="precioTachado">13.35€</span><span class="precioNuevo">12.95€</span></p>
                    <p class="text-muted precioBase">(18.90€/litro)</p>
                    <p>BEEFEATER ginebra inglesa botella 70cl</p>
                    <div class="input-group mb-3 input-group-rounded-pill">
                        <div class="input-group-prepend">
                            <button class="btn btn-outline-secondary" type="button" id="btn-resta">-</button>
                        </div>
                        <p class="productNum">1</p>
                        <div class="input-group-append">
                            <button class="btn btn-outline-secondary" type="button" id="btn-suma">+</button>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-success">Añadir al carro</button>
                </section>
            </div>
            <div class="col-sm-12 col-md">
                <section p-4 m-4 bg-light>
                    <img alt="Beefeater" id="producto1" src="img/beefeater2.jpg">
                    <p><span class="precioTachado">13.35€</span><span class="precioNuevo">12.95€</span></p>
                    <p class="text-muted precioBase">(18.90€/litro)</p>
                    <p>BEEFEATER ginebra inglesa botella 70cl</p>
                    <div class="input-group mb-3 input-group-rounded-pill">
                        <div class="input-group-prepend">
                            <button class="btn btn-outline-secondary" type="button" id="btn-resta">-</button>
                        </div>
                        <p class="productNum">1</p>
                        <div class="input-group-append">
                            <button class="btn btn-outline-secondary" type="button" id="btn-suma">+</button>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-success">Añadir al carro</button>
                </section>
            </div>
            <div class="col-sm-12 col-md">
                <section p-4 m-4 bg-light>
                    <span class="badge badge-danger descuentoB">20%</span>
                    <img alt="Beefeater" id="producto1" src="img/beefeater2.jpg">
                    <p><span class="precioTachado">13.35€</span><span class="precioNuevo">12.95€</span></p>
                    <p class="text-muted precioBase">(18.90€/litro)</p>
                    <p>BEEFEATER ginebra inglesa botella 70cl</p>
                    <div class="input-group mb-3 input-group-rounded-pill">
                        <div class="input-group-prepend">
                            <button class="btn btn-outline-secondary" type="button" id="btn-resta">-</button>
                        </div>
                        <p class="productNum">1</p>
                        <div class="input-group-append">
                            <button class="btn btn-outline-secondary" type="button" id="btn-suma">+</button>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-success">Añadir al carro</button>
                </section>
            </div>

            <div class="row">
                <div class="col-sm-12 col-md">
                    <section p-4 m-4 bg-light>
                        <span class="badge badge-danger descuentoB">20%</span>
                        <img alt="Beefeater" id="producto1" src="img/beefeater2.jpg">
                        <p><span class="precioTachado">13.35€</span><span class="precioNuevo">12.95€</span></p>
                        <p class="text-muted precioBase">(18.90€/litro)</p>
                        <p>BEEFEATER ginebra inglesa botella 70cl</p>
                        <div class="input-group mb-3 input-group-rounded-pill">
                            <div class="input-group-prepend">
                                <button class="btn btn-outline-secondary" type="button" id="btn-resta">-</button>
                            </div>
                            <p class="productNum">1</p>
                            <div class="input-group-append">
                                <button class="btn btn-outline-secondary" type="button" id="btn-suma">+</button>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-success">Añadir al carro</button>
                    </section>
                </div>
                <div class="col-sm-12 col-md">
                    <section p-4 m-4 bg-light>
                        <img alt="Beefeater" id="producto1" src="img/beefeater2.jpg">
                        <p><span class="precioTachado">13.35€</span><span class="precioNuevo">12.95€</span></p>
                        <p class="text-muted precioBase">(18.90€/litro)</p>
                        <p>BEEFEATER ginebra inglesa botella 70cl</p>
                        <div class="input-group mb-3 input-group-rounded-pill">
                            <div class="input-group-prepend">
                                <button class="btn btn-outline-secondary" type="button" id="btn-resta">-</button>
                            </div>
                            <p class="productNum">1</p>
                            <div class="input-group-append">
                                <button class="btn btn-outline-secondary" type="button" id="btn-suma">+</button>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-success">Añadir al carro</button>
                    </section>
                </div>
                <div class="col-sm-12 col-md">
                    <section p-4 m-4 bg-light>
                        <span class="badge badge-danger descuentoB">20%</span>
                        <img alt="Beefeater" id="producto1" src="img/beefeater2.jpg">
                        <p><span class="precioTachado">13.35€</span><span class="precioNuevo">12.95€</span></p>
                        <p class="text-muted precioBase">(18.90€/litro)</p>
                        <p>BEEFEATER ginebra inglesa botella 70cl</p>
                        <div class="input-group mb-3 input-group-rounded-pill">
                            <div class="input-group-prepend">
                                <button class="btn btn-outline-secondary" type="button" id="btn-resta">-</button>
                            </div>
                            <p class="productNum">1</p>
                            <div class="input-group-append">
                                <button class="btn btn-outline-secondary" type="button" id="btn-suma">+</button>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-success">Añadir al carro</button>
                    </section>
                </div>
                <div class="col-sm-12 col-md">
                    <section p-4 m-4 bg-light>
                        <img alt="Beefeater" id="producto1" src="img/beefeater2.jpg">
                        <p><span class="precioTachado">13.35€</span><span class="precioNuevo">12.95€</span></p>
                        <p class="text-muted precioBase">(18.90€/litro)</p>
                        <p>BEEFEATER ginebra inglesa botella 70cl</p>
                        <div class="input-group mb-3 input-group-rounded-pill">
                            <div class="input-group-prepend">
                                <button class="btn btn-outline-secondary" type="button" id="btn-resta">-</button>
                            </div>
                            <p class="productNum">1</p>
                            <div class="input-group-append">
                                <button class="btn btn-outline-secondary" type="button" id="btn-suma">+</button>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-success">Añadir al carro</button>
                    </section>
                </div>
                <div class="col-sm-12 col-md">
                    <section p-4 m-4 bg-light>
                        <span class="badge badge-danger descuentoB">20%</span>
                        <img alt="Beefeater" id="producto1" src="img/beefeater2.jpg">
                        <p><span class="precioTachado">13.35€</span><span class="precioNuevo">12.95€</span></p>
                        <p class="text-muted precioBase">(18.90€/litro)</p>
                        <p>BEEFEATER ginebra inglesa botella 70cl</p>
                        <div class="input-group mb-3 input-group-rounded-pill">
                            <div class="input-group-prepend">
                                <button class="btn btn-outline-secondary" type="button" id="btn-resta">-</button>
                            </div>
                            <p class="productNum">1</p>
                            <div class="input-group-append">
                                <button class="btn btn-outline-secondary" type="button" id="btn-suma">+</button>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-success">Añadir al carro</button>
                    </section>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12 col-md">
                    <section p-4 m-4 bg-light>
                        <span class="badge badge-danger descuentoB">20%</span>
                        <img alt="Beefeater" id="producto1" src="img/beefeater2.jpg">
                        <p><span class="precioTachado">13.35€</span><span class="precioNuevo">12.95€</span></p>
                        <p class="text-muted precioBase">(18.90€/litro)</p>
                        <p>BEEFEATER ginebra inglesa botella 70cl</p>
                        <div class="input-group mb-3 input-group-rounded-pill">
                            <div class="input-group-prepend">
                                <button class="btn btn-outline-secondary" type="button" id="btn-resta">-</button>
                            </div>
                            <p class="productNum">1</p>
                            <div class="input-group-append">
                                <button class="btn btn-outline-secondary" type="button" id="btn-suma">+</button>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-success">Añadir al carro</button>
                    </section>
                </div>
                <div class="col-sm-12 col-md">
                    <section p-4 m-4 bg-light>
                        <img alt="Beefeater" id="producto1" src="img/beefeater2.jpg">
                        <p><span class="precioTachado">13.35€</span><span class="precioNuevo">12.95€</span></p>
                        <p class="text-muted precioBase">(18.90€/litro)</p>
                        <p>BEEFEATER ginebra inglesa botella 70cl</p>
                        <div class="input-group mb-3 input-group-rounded-pill">
                            <div class="input-group-prepend">
                                <button class="btn btn-outline-secondary" type="button" id="btn-resta">-</button>
                            </div>
                            <p class="productNum">1</p>
                            <div class="input-group-append">
                                <button class="btn btn-outline-secondary" type="button" id="btn-suma">+</button>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-success">Añadir al carro</button>
                    </section>
                </div>
                <div class="col-sm-12 col-md"></div>
                <div class="col-sm-12 col-md"></div>
                <div class="col-sm-12 col-md"></div>
            </div>
-->
            <div class="d-sm-block d-md-none">
                <a href="#top" onclick="goTop(event)" id="buttonTop"><i class="fas fa-arrow-circle-up fa-2x"></i></a>
            </div>


<%@include file="../includes/footer.jsp"%> 
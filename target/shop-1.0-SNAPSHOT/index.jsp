<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Patitas con Estilo - Tienda de Accesorios de Mascotas</title>
        <!-- icon-->
        <link rel="icon" type="image/x-icon" href="images/Logo.png"/>

        <!-- Core theme CSS (includes Bootstrap)-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
        <link href="css/styles.css" rel="stylesheet" />
    </head>

    <body style="background-color: #ced4da;">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light ">
            <div class="container px-4 px-lg-5">
                <img src="images/Logo.png" height="50px"/>
                <a class="navbar-brand" href="#!">  Patitas con Estilo</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="#!">Inicio</a></li>
                        <li class="nav-item"><a class="nav-link active" href="html/about.html">Acerca de</a></li>
                        <li class="nav-item" ><form action="./ClienteServlet" method="POST">
                                <a class="nav-link active"><input id="ver" type="submit" name="action" value="Ver clientes" style="background-color: #ced4da;color: black;border: none; cursor: pointer;"/></a></form>
                        </li>
                    </ul>

                    <div class="container-icon">
                        <div class="container-cart-icon">
                            <img src="images/carritoDeCompras.jpg" 
                                 class="icon-cart"
                                 >

                            <div class="count-products">
                                <span id="contador-productos">0</span>
                            </div>
                        </div>

                        <div class="container-cart-products hidden-cart">
                            <div class="row-product hidden">
                                <div class="cart-product">
                                    <div class="info-cart-product">
                                        <span class="cantidad-producto-carrito"></span>
                                        <p class="titulo-producto-carrito"></p>
                                        <span class="precio-producto-carrito"></span>
                                    </div>

                                </div>
                            </div>

                            <div class="cart-total hidden">
                                <h3>Total:</h3>
                                <span id="total" class="total-pagar"></span>
                                <button id="btn-abrir-modal" style="background-color: #343a40;color: white; padding: 5px 25px" onclick="mostrarTotal()">
                                    <a href="html/comprar.jsp" style="text-decoration: none;" >Comprar</a>
                                </button>
                                <p class="cart-empty">El carrito está vacío</p>
                            </div>
                        </div>
                    </div>
                </div>
        </nav>

        <header class="bg-dark">
            <div class="container px-4" style="display: flex; flex-direction: row; justify-content: center; align-items: center">

                <div class="text-center text-white">
                    <img src="images/Logo.png" height="125px"/>
                </div>
                <div class="titulos text-white">
                    <h1 class="display-3 fw-bolder">  Patitas con Estilo</h1>    
                    <p class="lead fw-normal text-white-50 mb-0">Tienda de accesorios para mascotas</p></div>
            </div>
        </header>

        <!--Carrusel-->
        <div class="slider-frame">
            <ul>
                <li><img src="images/slide1.jpg" alt="slide"></li>
                <li><img src="images/slide2.jpg" alt="slide"></li>
                <li><img src="images/slide3.jpg" alt="slide"></li>
                <li><img src="images/slide4.jpg" alt="slide"></li>
            </ul>
        </div>

        <!--Productos-->
        <div class="container-items">
            <div class="item">
                <figure>
                    <img
                        src="images/collar.jpg"
                        alt="producto"
                        />
                </figure>
                <div class="info-product">
                    <h2>Collar para Perros</h2>
                    <p class="price">$50000</p>
                    <button class="btn-add-cart">Añadir al carrito</button>
                </div>
            </div>
            <div class="item">
                <figure>
                    <img
                        src="images/camaGato.jpg"
                        alt="producto"
                        />
                </figure>
                <div class="info-product">
                    <h2>Cama para Mascota</h2>
                    <p class="price">$40000</p>
                    <button class="btn-add-cart">Añadir al carrito</button>
                </div>
            </div>
            <div class="item">
                <figure>
                    <img
                        src="images/camaNidoGato.jpg"
                        alt="producto"
                        />
                </figure>
                <div class="info-product">
                    <h2>Cama nido</h2>
                    <p class="price">$70000</p>
                    <button class="btn-add-cart">Añadir al carrito</button>
                </div>
            </div>
            <div class="item">
                <figure>
                    <img
                        src="images/placaPersonalizada.jpg"
                        alt="producto"
                        />
                </figure>
                <div class="info-product">
                    <h2>Placa personalizada</h2>
                    <p class="price">$20000</p>
                    <button class="btn-add-cart">Añadir al carrito</button>
                </div>
            </div>

            <div class="item">
                <figure>
                    <img
                        src="images/rascadorPerro.png"
                        alt="producto"
                        />
                </figure>
                <div class="info-product">
                    <h2>Rascador para perro</h2>
                    <p class="price">$42000</p>
                    <button class="btn-add-cart">Añadir al carrito</button>
                </div>
            </div>
            <div class="item">
                <figure>
                    <img
                        src="images/setMordedores.png"
                        alt="producto"
                        />
                </figure>
                <div class="info-product">
                    <h2>Set mordedores</h2>
                    <p class="price">$32000</p>
                    <button class="btn-add-cart">Añadir al carrito</button>
                </div>
            </div>
            <div class="item">
                <figure>
                    <img
                        src="images/torrePelotasGato.png"
                        alt="producto"
                        />
                </figure>
                <div class="info-product">
                    <h2>Torre de pelotas</h2>
                    <p class="price">$35000</p>
                    <button class="btn-add-cart">Añadir al carrito</button>
                </div>
            </div>

        </div>


        <!-- Footer-->
        <div class="footer-basic">
            <footer>
                <div class="social">
                    <a href="https://www.instagram.com/" target="_blank"><i class="icon ion-social-instagram"></i></a>
                    <a href="https://wa.me/3195548644" target="_blank"><i class="icon ion-social-whatsapp"></i></a>
                    <a href="https://twitter.com/" target="_blank"><i class="icon ion-social-twitter"></i></a>
                    <a href="https://www.facebook.com/" target="_blank"><i class="icon ion-social-facebook"></i></a>
                </div>
                <ul class="list-inline">
                    <li class="list-inline-item"><a href="html/index.html">Inicio</a></li>
                    <li class="list-inline-item"><a href="html/about.html">Nosotros</a></li>
                    <li class="list-inline-item"><a href="https://policies.google.com/terms?hl=es" target="_blank">Terminos y Condiciones</a></li>
                </ul>
                <p class="copyright">Patitas con Estilo © 2023</p>
            </footer>
        </div>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>

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
        <link rel="icon" type="image/x-icon" href="../images/Logo.png" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
        <link href="../css/styles.css" rel="stylesheet" />
        
    </head>
    <body style="background-color: #ced4da;">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                <img src="../images/Logo.png" height="50px">
                <a class="navbar-brand" href="#!">  Patitas con Estilo</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="../index.jsp">Inicio</a></li>
                        <li class="nav-item"><a class="nav-link active" href="about.html">Acerca de</a></li>
                        <li class="nav-item" ><form action="../ClienteServlet" method="POST">
                                <a class="nav-link active"><input id="ver" type="submit" name="action" value="Ver clientes" style="background-color: #ced4da;color: black;border: none; cursor: pointer;"/></a></form>
                        </li>
                    </ul>
                   
                </div>
        </nav>
        <section style="text-align: center;">
            <div class="contenedor">
                <h2>Tus Datos</h2>
                <form id="forma" name="forma" method="POST" action="../ClienteServlet">
                    <div class="elemento">
                        <label for="nombre">Nombre</label>
                        <input type="text" id="nombre" name="nombre" required="true" value="${cliente.nombre}"/>
                    </div>
                    <div class="elemento">
                        <label for="identificacion">Identificacion</label>
                        <input type="text" id="id" name="id" required="true" value="${cliente.id}"/>
                    </div>
                    <div class="elemento">
                        <label for="correo">Correo</label>
                        <input type="text" id="correo" name="correo" required="true" value="${cliente.correo}"/>
                    </div>
                    <div class="elemento">
                        <label for="telefono">Teléfono</label>
                        <input type="text" id="telefono" name="telefono" required="true" value="${cliente.telefono}"/>
                    </div>
                    

                    <div class="elemento">
                        <input id="comprar" type="submit" value="comprar" name="action"/>
                    </div>
                    
                    
                    
                </form>
           </div>
        </section>            
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
        <script src="../js/scripts.js"></script>
    </body>
</html>

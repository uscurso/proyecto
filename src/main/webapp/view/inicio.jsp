<!doctype html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <!-- bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

    <!-- propios -->
    <link rel="stylesheet" href="../css/inte.css">   
    <link rel="stylesheet" href="../css/ejercicio3.css">   

     <!-- animate css -->
     <link rel="stylesheet"  href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"
   />
</head>

<body>
	<% 
	String id=request.getParameter("id");
	String foto=new String();
	ConexionDB con=new ConexionDB();
	Statement st=con.conectar();
	ResultSet rs;
	if(id!=null){
		rs=st.executeQuery("SELECT * FROM usuarios WHERE id="+id);
		rs.next();
		foto=rs.getString("fotoPerfil");
		//con.destruir();
	}
	%>

    <!-- menu -->
    <nav class="navbar navbar-expand-lg bg-body-tertiary" data-bs-theme="dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">
                <img src="images/codoacodo.png" alt="c" class="w-25">
                Conf BsAs
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText"
                aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarText">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#"></a>
                    </li>

                </ul>
                <span class="navbar-text">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <img alt="" src="<%out.print(foto);%>" class="img-fluid rounded-4" width="40px">
                        </li>
                       <!--	<li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">Home</a>
                        </li>   -->
                       
                        <!--nuevo-->
                        <li class="nav-item">
                            <a class="nav-link" href="#primero">Los oradores</a>
                        </li>
                       
                        <li class="nav-item">
                            <a class="nav-link" href="">El lugar y la fecha</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="#ora">Conviertéte en orador</a>
                        </li>
                        
                        
                        <li class="nav-item">
                            <a class="nav-link" href="#">Features</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Pricing</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-success" href="../tickets/tickets3.html">Comprar Ticket</a>
                        </li>
                             <li class="nav-item">
                            <a class="btn btn-outline-light" href="../view/login.jsp">Login</a>
                        </li>
                    </ul>
                </span>
            </div>
        </div>
    </nav>
    
    <!-- carrusel -->
    <div>
        <div id="carouselExampleCaptions" class="carousel slide">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active"
                    aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
                    aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
                    aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="images/ba1.jpg" class="d-block img-fluid imgDark" alt="ba">
                    <div class="carousel-caption d-block ">
                        <div class="row mb-4">
                            <div class="col-0 col-lg-4">

                            </div>
                            <div class="col-12 col-lg-8 text-center text-lg-end fontSmall ">
                                <h5 class="fs-3 fw-semibold">Conf BsAs</h5>
                                <p>Bs As llega por primera vez a Argentina. Un evento para compartir
                                    con nuestra comunidad el conocimiento y experiencia de los expertos que
                                    están creando el futuro de Internet. Ven a conocer a miembros del
                                    evento, a otros
                                    estudiantes de Codo a Codo y los oradores de primer
                                    nivel que tenemos para ti. Te esperamos!</p>
                                <div>
                                    <a href="#ora" class="btn btn-outline-light">Quiero ser orador</a>
                                    <a href="../tickets/tickets3.html" class="btn btn-success">Comprar ticket</a>
                                </div>
        
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="images/ba2.jpg" class="d-block w-100 "img-fluid" imgDark" alt="baa">
                    <div class="carousel-caption d-none d-md-block">
                        <h5 class="fs-3 fw-semibold">Conf BsAs</h5>
                        <p>Bs As llega por primera vez a Argentina. Un evento para compartir
                                    con nuestra comunidad el conocimiento y experiencia de los expertos que
                                    están creando el futuro de Internet. Ven a conocer a miembros del
                                    evento, a otros
                                    estudiantes de Codo a Codo y los oradores de primer
                                    nivel que tenemos para ti. Te esperamos!</p>
                        <div>
                            <a href="#ora" class="btn btn-outline-light">Quiero ser orador</a>
                            <a href="../tickets/tickets3.html" class="btn btn-success">Comprar ticket</a>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="images/ba3.jpg" class="d-block w-100 "img-fluid" imgDark" alt="ca">
                    <div class="carousel-caption d-none d-md-block">
                        <h5 class="fs-3 fw-semibold">Conf BsAs</h5>
                        <p>Bs As llega por primera vez a Argentina. Un evento para compartir
                                    con nuestra comunidad el conocimiento y experiencia de los expertos que
                                    están creando el futuro de Internet. Ven a conocer a miembros del
                                    evento, a otros
                                    estudiantes de Codo a Codo y los oradores de primer
                                    nivel que tenemos para ti. Te esperamos!</p>
                        <div>
                            <a href="#ora" class="btn btn-outline-light">Quiero ser orador</a>
                            <a href="../tickets/tickets3.html" class="btn btn-success">Comprar ticket</a>
                        </div>
                    </div>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>

    <!-- oradores -->
    <div class="text-center mt-2 mb-3">
     <a id="primero"></a>
        <div class="small">CONOCE A LOS</div>
        <div class="fs-4">ORADORES</div>
    </div>
    <div class="d-flex justify-content-center flex-wrap">
		<%
		rs=st.executeQuery("SELECT * FROM oradores");
		while(rs.next()) {
			out.println("<div class='card mx-1 animate__animated animate__fadeIn mb-3' style='width: 18rem';>");
			out.println("<img src='"+rs.getString("fotoPerfil")+"' class='card-img-top' alt='"+rs.getString("nombre")+"'>");
			out.println("<div class='card-body'>");
			out.println("<div class='botones mb-3'>");
			out.println("<a href='#' class='btn btn-sm bg-warning'>Javascript</a>");
			out.println("<a href='#' class='btn btn-sm bg-info text-light'>React</a>");
			out.println("</div>");
			out.println("<h5 class='card-title'>"+rs.getString("nombre") + " " +rs.getString("apellido") +"</h5>");
			out.println("<p class='card-text'>"+rs.getString("temas")+"</p>");
			out.println("</div>");
			out.println("</div>");
		}
		
		%>
	
        
    </div>

    <!-- bsas octubre -->
    <div class="containter-fluid">
        <div class="row">
            <div class="col-lg p-0">
                <img src="images/honolulu.jpg" alt="honolulu" class="img-fluid">
            </div>
            <div class="col-lg bgGrisOscuro text-light">
                <div class="fs-4 mt-1 mb-3">
                    BsAs Octubre
                </div>
                <div class="mb-3">
                    Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sint dolores quis nemo incidunt necessitatibus nostrum pariatur suscipit doloribus omnis, quae enim perferendis! Quidem vero sit excepturi quis alias error animi.
                </div>
                <div>
                    <a href="" class="btn btn-outline-light">Conoce más</a>
                </div>
            </div>
        </div>
    </div>


    <!-- oradores -->
    <div class="text-center mt-4">
        <a id="ora"></a>
        <div class="small">Conviértete en un</div>
        <div class="fs-4 mb-2">ORADOR</div>
        <div class="small">Anótate como orador para dar una charla ignite. Cuéntanos de qué quieres hablar!</div>
    </div>

    <form action="" method="submit">
        <div class="datos">
                     <input type="text" name="" id="" placeholder="Nombre" size="49" required>
                     <input type="text" name="apellido" id="apellido" placeholder="Apellido" size="49" required>
        </div>
        <div class="datos2">
           <textarea name="textarea" rows="5" cols="85" class="dato6">Sobre qué quieres hablar?
           </textarea>
        </div>
        <div class="datos3">Recuerda incluir un título para tu charla</div>
        <div class=datos>    
            <button type="button" class="datos4">Enviar</button>
        
        </div>
    </form>

        <footer> 
        
	<ul class="nav justify-content-center bottom dato3">
  <li class="nav-item">
    <a class="nav-link active" aria-current="page" href="#">Preguntas frecuentes</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">Contáctanos</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">Prensa</a>
  </li>
 <li class="nav-item">
    <a class="nav-link" href="#">Conferencias</a>
  </li>
    <li class="nav-item">
    <a class="nav-link" href="#">Términos y condiciones</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">Privacidad</a>
  </li>
	<li class="nav-item">
	   <a class="nav-link" href="#">Estudiantes</a>
	 </li>

</ul>      

    </footer> 
 

	  <script src="../view/inicio.jsp"></script> 

 		 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</body>

</html>
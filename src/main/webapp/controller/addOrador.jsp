<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<%
	String nom=request.getParameter("nomAdd");
	String ape=request.getParameter("apeAdd");
	String email=request.getParameter("emailAdd");
	String dni=request.getParameter("dniAdd");
//	String temas[]=request.getParameterValues("temasAdd");
	//TODO: obtener textaer

	
	ConexionDB con=new ConexionDB();
	Statement st=con.conectar();
	
	try {
		Integer insertOk=st.executeUpdate("INSERT INTO oradores (nombre, apellido, email, dni, resenia, temas) VALUES ('"+nom+"','"+ape+"','"+email+"',"+dni+" ,'','') ");
		
		if(insertOk==1) {
			response.sendRedirect("../view/listaOradores.jsp?mensaje=Orador%20creado%20exitosamente");			
		} else {
			response.sendRedirect("../view/listaOradores.jsp?mensaje=No%20se%20pudo%20crear%20el%20orador");			
		}
	} catch(Exception e) {
		
		response.sendRedirect("../view/listaOradores.jsp?mensaje=No%20se%20pudo%20crear%20el%20orador");
		e.printStackTrace();
	}
	


%>

<%@page import="com.emergentes.modelo.Persona"%>
<%@page import="java.util.ArrayList"%>
<%
    if (session.getAttribute("listaper")== null)
    {
        ArrayList<Persona> la=new ArrayList<Persona>();
        session.setAttribute("listaper", la);   
    }
    ArrayList<Persona> lista = (ArrayList<Persona>)session.getAttribute("listaper");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Listado de personas</h1>
        <a href="MainServlet?op=nuevo">Nuevo registro</a>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Nombres</th>
                <th>Apellidos</th>
                <th>Edad</th>
                <th></th>
                <th></th>
            </tr>
            <%
                if(lista !=null)
                {
                    for(Persona item : lista)
                    {
                
            %>
            <tr>
                <th><%= item.getId() %></th>
                <th><%= item.getNombres() %></th>
                <th><%= item.getApellidos() %></th>
                <th><%= item.getEdad() %></th>
                <th><a href="MainServlet?op=editar&id=<%=item.getId() %>">Editar</a></th>
                <th><a href="MainServlet?op=eliminar&id=<%=item.getId() %>" onclick="return(confirm('Esta seguro de eliminar??'))">Eliminar</a></th>
            </tr>
            
            <%
                    }
                }
            %>
        </table>
        
    </body>
</html>
                    
<%-- 
    Document   : crudProductos
    Created on : 03-07-2020, 21:18:40
    Author     : Edgard
--%>

<%@page import="dao.ProductoDAO"%>
<%@page import="modelos.Producto"%>
<%@page import="dao.EstadoDAO"%>
<%@page import="modelos.Estado"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crud Productos</title>
    </head>
    <body>
    <center>
        <h1>Lista de Productos</h1>
        <menu >
            <a href="intranet.jsp">
            <menuitem >Usuarios</menuitem>
            </a> |
            <a href="crudProductos.jsp">
            <menuitem >Productos</menuitem>
            
        </menu>
        
                        <% if(request.getParameter("msj")!= null){%>
        <h4><%= request.getParameter("msj") %></h4>
        <%}%>
        <table>
            <tr>

                <td>Nombre</td>
                <td>Descripción</td>
                <td>Precio</td>
              
              
            </tr>
            <% ArrayList<Producto> productos = new ProductoDAO().obtenerProductos();
               for(Producto p: productos){               
                %>
            <tr>
                
                <td><%= p.getNombre() %></td>
                <td><%= p.getDescripcion() %></td>
                <td><%= p.getPrecio() %></td>
                
                <td><a href="modProducto.jsp?codigo=<%= p.getCodigo() %>">
                        <button type="button">Agregar producto</button>
                    </a></td>
                
            </tr>
            <% } %>
        </table>
          <table>
            <td>            <a href="intranet.jsp">
            <menuitem >Usuarios</menuitem>
            </a>
                </td>
        </table>
    </center>
    </body>
</html>

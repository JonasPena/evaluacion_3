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
        <h1>Creacion de Productos</h1>
        <menu >
            
            <a href="crudProductos.jsp">
            <menuitem >Productos</menuitem>
            </a> | 
            <a href="crudEstados.jsp">
            <menuitem >Estados</menuitem>
            </a>
        </menu>
        <form action="ControladorProducto" method="post">
            <table>
                <tr>
                    <td>Codigo</td>
                    <td><input type="number" name="codigo"/></td>
                </tr>
                <tr>
                    <td>Nombre</td>
                    <td><input type="text" name="nombre"/></td>
                </tr>
                <tr>
                    <td>Descripcion</td>
                    <td><textarea cols="20" rows="5" name="descripcion"></textarea></td>
                </tr>
             <tr>
                    <td>Cantidad</td>
                    <td><input type="number" name="cantidad"/></td>
                </tr>
                <tr>
                    <td>Precio</td>
                    <td><input type="number" name="precio"/></td>
                </tr>
                <tr>
                    <td>Estado</td>
                    <td>
                        <select name="estado">
                            <option value="0">Seleccione</option>
                            <% ArrayList<Estado> estados = new EstadoDAO().obtenerEstados(); 
                            for(Estado e:estados){%>
                            <option value="<%= e.getId() %>"><%= e %></option>
                            <% } %>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><input type="reset" value="Limpiar"/></td>
                    <td><input type="submit" value="Registrar"/></td>
                <input type="hidden" name="accion" value="1"/>
                </tr>
            </table>
        </form>
                        <% if(request.getParameter("msj")!= null){%>
        <h4><%= request.getParameter("msj") %></h4>
        <%}%>
        <table>
            <tr>
                <td>Código</td>
                <td>Nombre</td>
                <td>Descripción</td>
                <td>Cantidad</td>
                <td>Precio</td>
                <td>Estado</td>
            
                <td>Eliminar</td>
            </tr>
            <% ArrayList<Producto> productos = new ProductoDAO().obtenerProductos();
               for(Producto p: productos){               
                %>
            <tr>
                <td><%= p.getCodigo() %></td>
                <td><%= p.getNombre() %></td>
                <td><%= p.getDescripcion() %></td>
                <td><%= p.getCantidad() %></td>
                <td><%= p.getPrecio() %></td>
                <td><%= p.getEstado() %></td>
                
                <td><a href="delProducto.jsp?codigo=<%= p.getCodigo() %>">
                        <button type="button">Eliminar</button>
                    </a></td>
            </tr>
            <% } %>
        </table>
        
         <table>
             <tr>
                
                <td><a href="index.jsp">
                        <input type="button" value="Salir"/>
                    </a>
                </td>
            </tr>
        </table>
        
    </center>
    </body>
</html>

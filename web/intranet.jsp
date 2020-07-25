<%-- 
    Document   : intranet.jsp
    Created on : 13-06-2020, 19:30:44
    Author     : Edgard
--%>

<%@page import="dao.UsuarioDAO"%>
<%@page import="dao.PedidoDAO"%>
<%@page import="util.UsuarioUtil"%>
<%@page import="util.PedidoUtil"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelos.Usuario"%>
<%@page import="modelos.Pedido"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Intranet</title>
    </head>
    <body>
    <center>
        <h1>Bienvenido
            <% if(session.getAttribute("usuario")!= null){
             Usuario u = (Usuario) session.getAttribute("usuario");
            %>
        <h3><%= u.getNombre()+" "+u.getApellido() %></h3>
        <%}else{response.sendRedirect("index.jsp?msj=acceso denegado");}%>
        </h1>
        <a href="Salir"><input type="button" value="Cerrar Sesion"/></a>
        <menu >
           
            <a href="crudinProd.jsp">
            <menuitem >Productos</menuitem>
            </a> | 
            <a href="crudEstados.jsp">
            <menuitem >Estados</menuitem>
            </a>
        </menu>
        
            <input type="hidden" name="accion" value="2"/>
        </form>
        <% if(request.getParameter("msj")!= null){%>
        <h3><%= request.getParameter("msj") %></h3>
        <%}%>
        <h3>Pedios Registrados</h3>
        <table border="1" style="border-collapse: collapse;">
            <tr>
            
                <td>Producto</td>
                <td>Descripcion</td>
                <td>corre</td>
                <td>Estado</td>
                <td>Modificar</td>
              
            </tr>
            <%  PedidoDAO ud = new PedidoDAO();
                ArrayList<Pedido> pedidos = ud.obtenerPedido(); 
            for(Pedido u:pedidos){
            %>
            <tr>
            
                <td><%= u.getProducto_id() %></td>
                <td><%= u.getDescripcion() %></td>
                <td><%= u.getCorreo() %></td>
                <td><%= u.getEstado() %></td>
              
                <td><a href="modificaUsuario.jsp?id=<%= u.getId() %>">
                        <input type="button" value="Modificar"/>
                    </a>
                </td>
                <td><a href="eliminarUsuario.jsp?id=<%= u.getId() %>">
                        <input type="button" value="Eliminar"/>
                    </a></td>
            </tr>
            <% } %>
        </table>
        <% if(request.getParameter("msj")!= null){%>
        <h4><%= request.getParameter("msj") %></h4>
        <%}%>
        
       <table>
             <tr>
                
                <td><a href="index.jsp">
                        <input type="button" value="Salir"/>
                    </a>
                </td>
            </tr>
        </table>
        
      </center>
      
</html>

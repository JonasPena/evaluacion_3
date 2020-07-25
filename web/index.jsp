<%-- 
    Document   : index
    Created on : 13-06-2020, 18:45:18
    Author     : Edgard
--%>

<%@page import="modelos.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio</title>
    </head>
    <body>
        <center>
        <h1>Inicio Bienvenido</h1>
        
            <tr>
                
                <td><a href="index_1.jsp">
                        <input type="button" value="Acceso Administradores"/>
                    </a>
                </td>
            </tr>
                        <tr>
                
                <td><a href="crudProductos.jsp">
                        <input type="button" value="Acceso Usuarios"/>
                    </a>
                </td>
            </tr>
            
        </table>
            <input type="hidden" name="accion" value="1"/>
        <% if(request.getParameter("msj")!= null){%>
        <h3><%= request.getParameter("msj") %></h3>
        <%}%>
        </form>
        </center>
    </body>
</html>

<%-- 
    Document   : formularioRespuesta
    Created on : 28-sep-2016, 8:42:25
    Author     : alumno
--%>

<%@page contentType="text/html;UTF-8"%>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% if ((request.getParameter("name") == null
                    && request.getParameter("edad") == null
                    && request.getParameter("dias") == null
                    && request.getParameter("formapago") == null
                    && request.getParameter("especificaciones") == null)
                    || (request.getParameter("name").equals("")
                    && request.getParameter("edad").equals("")
                    && request.getParameter("dias").equals("")
                    && request.getParameter("formapago").equals("")
                    && request.getParameter("especificaciones").equals(""))) { %>
        <form action="CapturaDatosVideoclub" method="POST">
            <table border="0" width="50%" bgcolor="#FFFFD4">
                <thead>
                    <tr>
                        <th bgcolor="#FFCE57" colspan="5" align="left"><b>VIDEOCLUB ON-LINE</b></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td bgcolor="#9D9933">Nombre Pel�cula</td>
                        <td><input type="text" name="name" value="" /></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td bgcolor="#9D9933">N�mero D�as Alquiler</td>
                        <td><input type="text" name="dias" value="1" /></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td bgcolor="#9D9933" width="100px">Edad Cliente</td>
                        <td bgcolor="#9D9933" width="140px">Forma De Pago</td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="radio" name="edad" value="1" />Menor de 7 a�os<br>
                            <input type="radio" name="edad" value="2" />Menor de 14 a�os <br>
                            <input type="radio" name="edad" value="3" />Menor de 18 a�os<br>
                            <input type="radio" name="edad" value="4" />Mayor de 18 a�os<br>
                        </td>
                        <td><select name="formapago">
                                <option selected>VISA</option>
                                <option>Master Card</option>
                                <option>Efectivo</option>
                            </select></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td bgcolor="#9D9933" colspan="2">Especificaciones extras</td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td colspan="4"><textarea  name="especificaciones" rows="10" cols="85">
                            </textarea></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td colspan="4" align="center"><input type="submit" value="Enviar pedido" />
                            <input type="reset" value="Borrar Formulario" /></td>
                    </tr>
                </tbody>
            </table>
        </form>        
        <% } %>
    </body>
</html>

<%-- 
    Document   : visitasXunidad
    Created on : 06-ago-2016, 14:25:39
    Author     : Owner
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="com.sv.udb.controlador.UnidOrgaCtrl"%>
<%@page import="com.sv.udb.modelo.unid_orga"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Unidades</title>
    </head>
    <body>
        <form id="reporte1" action="reporte1.jsp" method="post">
            <h1>Visitas a X unidad</h1>
            <table>
                <tr>
                    <td>Seleccione una unidad</td>
                </tr>
                <tr>
                    <td><select name="cmbUnidad">
                        <jsp:useBean id="beanUnidCtrl" class="com.sv.udb.controlador.UnidOrgaCtrl" scope="page"/>
                        <c:forEach items="${beanUnidCtrl.consTodo()}" var="fila">
                            <c:choose>
                                <c:when test="{fila.Codi_unid_orga eq cmbUnidad}">
                                    <option name="codi_unid_orga" value="${fila.codi_unid_orga}" selected="">${fila.nomb_unid_orga}</option>
                                </c:when>
                                <c:otherwise>
                                    <option name="codi_unid_orga" value="${fila.codi_unid_orga}">${fila.nomb_unid_orga}</option>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                    </select></td>
                </tr>
                <td>
                    <input type="submit" name="button" id="SelectedUnidad">
                </td>
            </table>
        </form>
    </body>
</html>

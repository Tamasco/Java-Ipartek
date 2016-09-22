<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Ejemplar</title>
	</head>
	
	<body>
		
		<form:form action="save" modelAttribute="ejemplar" commandName="ejemplar">
			<c:if test="${!empty ejemplar}">
				<form:label path="codigo">
					<spring:message text="Codigo: " />
				</form:label>
				<form:input path="codigo" readonlye="true" size="10" disabled="true" />
				<form:hidden path="codigo" />
			</c:if>
			
			<br/>
			
			<form:label path="editorial">
				<spring:message text="Editorial: "/>
			</form:label>
			<form:input path="editorial" cssClass="" cssErrorClass="" />
			<form:errors cssClass="" path="editorial" />
			
			<br/>
			
			<form:label path="nPaginas">
				<spring:message text="Numero Paginas: " />
			</form:label>
			<form:input path="nPaginas" cssClass="" cssErrorClass="" />
			<form:errors cssClass="" path="nPaginas" />

			<br/>
			
			<c:if test="${ejemplar.codigo>0}">
				<input type="submit" value="<spring:message text="Editar Ejemplar"/>"/>
			</c:if>
			
			<c:if test="${ejemplar.codigo<0}">
				<input type="submit" value="<spring:message text="Crear Ejemplar"/>"/>
			</c:if>
			
			<a href="cancel">Cancelar</a>
			
		</form:form>
		
	</body>
</html>
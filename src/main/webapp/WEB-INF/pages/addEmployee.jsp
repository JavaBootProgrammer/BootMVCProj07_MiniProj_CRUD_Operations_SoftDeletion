<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<h1 style="color: red; text-align: center;">
	<a href="report">Employee Registration</a>
</h1>
<form:form  modelAttribute="employee">
	<table align="center" bgcolor="gray">
		<tr>

			<td>Employee name
			<td><form:input path="employeeName" /></td>
		</tr>
		<tr>
			<td>Employee job
			<td><form:input path="job" /></td>
		</tr>
		<tr>
			<td>Employee salary
			<td><form:input path="salary" /></td>
		</tr>
		<tr>
			<td>Employee dept
			<td><form:input path="dept" /></td>
		</tr>
		<tr>
			<td>Employee status
			<td><form:input path="status" /></td>
		</tr>
		<tr>
			<td><input type="submit" value="register"></td>
			<td><input type="submit" value="cancel"></td>
		</tr>
	</table>


</form:form>
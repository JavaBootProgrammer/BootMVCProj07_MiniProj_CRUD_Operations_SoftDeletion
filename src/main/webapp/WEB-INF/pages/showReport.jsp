<%@page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core"%>


<core:choose>
	<core:when test="${!empty employees}">
		<h1 align="center">Employee Report</h1>

		<table border="1" align="center" bgcolor="cyan">
			<tr>
				<th>Employee no</th>
				<th>Employee name</th>
				<th>Job</th>
				<th>Salary</th>
				<th>Status</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>

			<core:forEach var="emp" items="${employees}">
				<tr style="color: red">
					<td>${emp.no}</td>
					<td>${emp.employeeName}</td>
					<td>${emp.job}</td>
					<td>${emp.salary}</td>
					<td>${emp.status}</td>

					<td><a href="edit?no=${emp.no}"> <img
							src="images/edit.png" width="10px" height="10px">Edit
					</a>&nbsp;&nbsp;&nbsp;&nbsp;</td>


					<td><a href="delete?no=${emp.no}"> <img
							src="images/delete.png" width="10px" height="10px">Delete
					</a>&nbsp;&nbsp;&nbsp;&nbsp;</td>

				</tr>
			</core:forEach>

		</table>
	</core:when>

</core:choose>


<h2 style="color: green; text-align: center;">${message}</h2>


<center>
	<a href="register">Register Employee <img src="images/add.png"
		width="15px" height="15px">

	</a>
</center>


<center>
	<a href="./">home <img src="images/home.png" width="15px"
		height="15px">

	</a>
</center>
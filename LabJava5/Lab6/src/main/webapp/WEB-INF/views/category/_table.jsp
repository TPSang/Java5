<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<table class="table table-striped table-hover table-bordered m-0" border="1"
	style="width: 100%">
	<tr>
		<th>Id</th>
		<th>Name</th>
		<th></th>
	</tr>
	<c:forEach var="item" items="${items}">
		<tr>
			<td>${item.id}</td>
			<td>${item.name}</td>
			<td class="text-center"><a class="btn btn-outline-primary"
				href="/category/edit/${item.id}">Edit</a></td>
		</tr>
	</c:forEach>
</table>
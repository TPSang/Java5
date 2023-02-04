<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<form:form action="/category/index" modelAttribute="item">
	<div class="row p-2 pb-0">
		<form:input class="form-control col" path="id"
			placeholder="Category Id?" />
		<form:input class="form-control col" path="name"
			placeholder="Category Name?" />
	</div>
	<hr>
	<button formaction="/category/create" class="btn btn-success">Create</button>
	<button formaction="/category/update" class="btn btn-info">Update</button>
	<a href="/category/delete/${item.id}" class="btn btn-danger">Delete</a>
	<a href="/category/index" class="btn btn-secondary">Reset</a>
</form:form>
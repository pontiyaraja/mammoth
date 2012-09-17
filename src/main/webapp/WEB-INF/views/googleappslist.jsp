<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container"></div>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="span8 offset2">
				<div class="page-header">
					<h1>Simple CRUD Page</h1>
				</div>				
                <c:if test="${!empty peopleList}">
                <h3>People</h3>
                <table class="table table-bordered table-striped">
                    <thead>
                    <tr>
                        <th>Name</th>
                        <th>&nbsp;</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${peopleList}" var="person">
                        <tr>
                            <td>${person.lastName}, ${person.firstName}</td>
                            <td><form action="delete/${person.id}" method="post"><input type="submit" class="btn btn-danger btn-mini" value="Delete"/></form></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </c:if>
			</div>
		</div>
	</div>
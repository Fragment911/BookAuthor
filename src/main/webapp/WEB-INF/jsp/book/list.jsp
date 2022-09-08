<%@ include file="/webresources/header.jspf"%>
    <h1>Book list</h1>
    <table class="table table-striped table-dark">
        <thead>
            <tr>
                <th width="50">Code</th>
                <th>Name</th>
                <th>Author</th>
                <th width="150"></th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var = "book" items="${bookList}">
                <tr>
                    <td>${book.id}</td>
                    <td>${book.name}</td>
                    <td>${book.author.name}</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/book/${book.id}" class="btn btn-primary btn-sm" title="Info"><i class="fa fa-info-circle fa-fw"></i></a>
                        <a href="${pageContext.request.contextPath}/book/update/${book.id}" class="btn btn-warning btn-sm" title="Edit"><i class="fa fa-pencil-square fa-fw"></i></a>
                        <a href="${pageContext.request.contextPath}/book/remove/${book.id}" class="btn btn-danger btn-sm" title="Remove"><i class="fa fa-trash fa-fw"></i></a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <a href="${pageContext.request.contextPath}/book/create" class="btn btn-success"><i class="fa fa-plus fa-fw"></i>Add</a>

<%@ include file="/webresources/footer.jspf"%>

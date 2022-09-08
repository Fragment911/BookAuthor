<%@ include file="/webresources/header.jspf"%>
    <h1>Author</h1>
    <table class="table table-striped table-dark">
        <tbody>
            <tr>
                <td><b>Code</b></td>
                <td>${author.id}</td>
            </tr>
            <tr>
                <td><b>Name</b></td>
                <td>${author.name}</td>
            </tr>
        </tbody>
    </table>
    <a href="${pageContext.request.contextPath}/author/update/${author.id}" class="btn btn-warning" title="Update"><i class="fa fa-pencil-square fa-fw"></i>Update</a>
    <a href="${pageContext.request.contextPath}/author/remove/${author.id}" class="btn btn-danger" title="Remove"><i class="fa fa-trash fa-fw"></i>Remove</a>
    <a href="${pageContext.request.contextPath}/author" class="btn btn-outline-secondary"><i class="fa fa-reply fa-fw"></i>Back</a>
<%@ include file="/webresources/footer.jspf"%>

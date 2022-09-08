<%@ include file="/webresources/header.jspf"%>
    <h1>Update author</h1>
    <form role="form" action="${contextPath}/author/update" method="POST">
        <div class="form-group" style = "display: none">
            <label for="id">Id</label>
            <input class="form-control" type="number" name="id" readonly value="${author.id}" autocomplete="off" />
        </div>
        <div class="form-group">
            <label for="name">author</label>
            <input class="form-control" type="text" name="name" value="${author.name}" autocomplete="off" />
        </div>
        <button type="submit" class="btn btn-success"><i class="fa fa-check fa-fw"></i>Save</button>
        <a href="${pageContext.request.contextPath}/author" class="btn btn-danger"><i class="fa fa-times fa-fw"></i>Cancel</a>
    </form>
<%@ include file="/webresources/footer.jspf"%>

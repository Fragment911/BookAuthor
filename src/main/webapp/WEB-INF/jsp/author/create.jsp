<%@ include file="/webresources/header.jspf"%>
    <h1>Create author</h1>
    <form role="form" action="${contextPath}/author/create" method="POST">
        <div class="form-group">
            <label for="name">Name</label>
            <input class="form-control" type="text" name="name" path="name" autocomplete="off" />
        </div>
        <button type="submit" class="btn btn-success"><i class="fa fa-check fa-fw"></i>Save</button>
        <a href="${pageContext.request.contextPath}/author" class="btn btn-danger"><i class="fa fa-times fa-fw"></i>Cancel</a>
    </form>
<%@ include file="/webresources/footer.jspf"%>
l
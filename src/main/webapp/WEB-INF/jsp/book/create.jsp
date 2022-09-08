<%@ include file="/webresources/header.jspf"%>
    <h1>Create book</h1>
    <form role="form" action="${contextPath}/book/create" method="POST">
        <div class="form-group">
            <label for="name">Name</label>
            <input class="form-control" type="text" name="name" path="name" autocomplete="off" />
        </div>
        <div class="form-group">
            <label for="author">Author</label>
            <select path="author" name="author" class="form-control" id="author">
                <option value="${null}">Without author</option>
                <c:forEach var="author" items="${authorList}">
                    <option value="${author.id}">${author.name}</option>
                </c:forEach>
            </select>
        </div>
        <button type="submit" class="btn btn-success"><i class="fa fa-check fa-fw"></i>Save</button>
        <a href="${pageContext.request.contextPath}/book" class="btn btn-danger"><i class="fa fa-times fa-fw"></i>Cancel</a>
    </form>
<%@ include file="/webresources/footer.jspf"%>
l
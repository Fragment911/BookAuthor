<%@ include file="/webresources/header.jspf"%>
    <h1>Update book</h1>
    <form role="form" action="${contextPath}/book/update" method="POST">
        <div class="form-group" style = "display: none">
            <label for="id">Id</label>
            <input class="form-control" type="number" name="id" readonly value="${book.id}" autocomplete="off" />
        </div>
        <div class="form-group">
            <label for="name">Name</label>
            <input class="form-control" type="text" name="name" value="${book.name}" autocomplete="off" />
        </div>
        <div class="form-group">
            <label for="author">Author</label>
            <select path="author" name="author" class="form-control" id="author">
                <option value="${null}">Without author</option>
                <c:forEach var = "author" items="${authorList}">
                    <c:if test="${author.id != book.author.id}">
                        <option value="${author.id}">${author.name}</option>
                    </c:if>
                    <c:if test="${author.id == book.author.id}">
                        <option value="${author.id}" selected>${author.name}</option>
                    </c:if>
                </c:forEach>
            </select>
        </div>
        <button type="submit" class="btn btn-success"><i class="fa fa-check fa-fw"></i>Save</button>
        <a href="${pageContext.request.contextPath}/book" class="btn btn-danger"><i class="fa fa-times fa-fw"></i>Cancel</a>
    </form>
<%@ include file="/webresources/footer.jspf"%>

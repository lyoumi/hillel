<%@ page import="model.Book" %>
<%@ page import="model.jdbc.JDBCBookDataAccessObject" %><%--
  Created by IntelliJ IDEA.
  User: pikachu
  Date: 10/23/17
  Time: 8:10 AM
  To change this template use File | Settings | File Templates.
--%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <%--<link rel="icon" href="../../favicon.ico">--%>

    <title>Books</title>

    <!-- Bootstrap core CSS -->
    <link href="/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/jumbotron-narrow.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

<form  action = "${pageContext.request.contextPath}/books/update" method = "POST">

    <div class="container">
        <div class="header clearfix">
            <nav>
                <ul class="nav nav-pills pull-right">
                    <li role="presentation" class="active"><a href="menu.jsp">Home</a></li>
                    <li role="presentation"><a href="#">About</a></li>
                    <li role="presentation"><a href="#">Contact</a></li>
                </ul>
            </nav>
            <h3 class="text-muted">Books</h3>
        </div>

        <div class="jumbotron">
            <div class="form-group">
                <input type="text" placeholder="Book id" name="BookId" class="form-control">
            </div>
            <div class="form-group">
                <input type="text" placeholder="Book name" name="BookName" class="form-control">
            </div>
            <div class="form-group">
                <input type="text" placeholder="Author" name="BookAuthor" class="form-control">
            </div>
            <div class="form-group">
                <input type="text" placeholder="Publisher" name="BookPublisher" class="form-control">
            </div>
            <div class="form-group">
                <input type="text" placeholder="Price" name="BookPrice" class="form-control">
            </div>
            <input type = "submit" name = "updateButton" value = "Update" />
            <p><a class="btn btn-lg btn-success" role="button" type="submit" name="updateButton">Update</a></p>
        </div>



    </div> <!-- /container -->


</form>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>

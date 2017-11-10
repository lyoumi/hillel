<%@ page import="model.Book" %>
<%@ page import="model.jdbc.JDBCBookDataAccessObject" %>
<%@ page import="model.hibernate.HibernateBookDataAccessObject" %>
<%@ page import="java.util.stream.IntStream" %>
<%@ page import="model.Author" %>
<%@ page import="model.hibernate.HibernateAuthorDataAccessObject" %><%--
  Created by IntelliJ IDEA.
  User: pikachu
  Date: 10/23/17
  Time: 8:09 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <!--[if lt IE 9]>
    <script src="js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

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

    <script type="text/javascript" src="/js/jquery-3.2.1.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#submitButton').click(function () {
                var genre = $('#bookGenre').val();
                $.ajax({
                    type: 'POST',
                    data: {genre: genre},
                    url: '/books/show',
                    success: function (result) {
                        $('#result1').html(result);
                    }
                })
            })
        })
    </script>

    <form action = "${pageContext.request.contextPath}/books/show" method = "POST">
    <div class="jumbotron">
        <div class="form-group">
            <div class="form-group">
                <input type="text" placeholder="Fantasy, Comedy, Drama, Horror Fiction, Literary realism, Romance, Tragedy, Tragicomedy, Manga, Scientific, Programing" name="bookGenre" id="bookGenre" class="form-control">
            </div>
            <input type = "submit" name = "submitButton" id="submitButton" value = "Show" />
            <%--<p><a class="btn btn-lg btn-success" role="button" type="submit" name="submitButton" id="submitButton">Filter</a></p>--%>
        </div>
    </div>
    </form>

        <%--<%--%>
        <%--String s = "";--%>
        <%--for (Book book :--%>
            <%--HibernateBookDataAccessObject.getHibernateBookDataAccessObject().getAllBooks()) {--%>

            <%--String authors = "";--%>
            <%--for (int i = 0; i < book.getAuthors().size(); i++) {--%>
                <%--authors += book.getAuthors().get(i).getName();--%>
                <%--System.err.println(authors);--%>
                <%--if (i < (book.getAuthors().size()-1)) authors  += ", ";--%>
            <%--}--%>

            <%--String genres = "";--%>
            <%--for (int i = 0; i < book.getGenres().size(); i++) {--%>
                <%--genres += book.getGenres().get(i).getGenrename();--%>
                <%--if (i < (book.getGenres().size()-1)) genres  += ", ";--%>
            <%--}--%>

            <%--s += "<div class=\"jumbotron\"><h1>";--%>
            <%--s += book.getName() +--%>
            <%--"</h1><p class=\"lead\">" + "Id: " +--%>
            <%--book.getId() + "</p><p>" + "Author: " +--%>
            <%--authors + "</p><p>" + "Genres: " +--%>
            <%--genres +--%>
            <%--"</p><p>" + "Publisher: " +--%>
            <%--book.getPublisher() + "</p><p>" +--%>
            <%--"Price: " + book.getPrice() + "</p>" +--%>
            <%--"<p><a class=\"btn btn-lg btn-success\" href=\"#\" role=\"button\">Buy now</a></p>" +--%>
            <%--"</div>";--%>

        <%--}--%>
        <%--%>--%>

        <%--<%=s%>--%>

    <div id="result1">

    </div>
<%--<script>--%>
    <%--$(document).ready(function(){--%>
        <%--$('submitButton').click(function(){--%>
                <%--<%--%>
        <%--//        String c = request.getParameter("GenreName");--%>
        <%--//        System.out.println(c);--%>
                <%--s = "";--%>
                <%--$.get({--%>
                <%--url:"",--%>
                <%--data:"",--%>
                <%--success: function(response) {--%>

                <%--}--%>
                <%--})--%>
                <%--for (Book book :--%>
                        <%--HibernateBookDataAccessObject.getHibernateBookDataAccessObject().getAllBooks()) {--%>
                    <%--s += "<div class=\"jumbotron\"><h1>";--%>
                    <%--s += book.getName() +--%>
                            <%--"</h1><p class=\"lead\">" + "Id: " +--%>
                            <%--book.getId() + "</p><p>" + "Author: " +--%>
                            <%--book.getAuthor() +--%>
                            <%--"</p><p>" + "Publisher: " +--%>
                            <%--book.getPublisher() + "</p><p>" +--%>
                            <%--"Price: " + book.getPrice() + "</p>" +--%>
                            <%--"<p><a class=\"btn btn-lg btn-success\" href=\"#\" role=\"button\">Buy now</a></p>" +--%>
                            <%--"</div>";--%>

                <%--}--%>
            <%--%>--%>
                <%--document.getElementById("books").innerHTML = <%=HibernateBookDataAccessObject.getHibernateBookDataAccessObject().getAllBooks()%>;--%>
        <%--})--%>
    <%--})--%>
    <%--</script>--%>



    <%--<script type="text/javascript">--%>
        <%--function filter() {--%>
            <%--<%--%>
    <%--//        String c = request.getParameter("GenreName");--%>
    <%--//        System.out.println(c);--%>
            <%--String s = "";--%>
            <%--for (Book book :--%>
                    <%--HibernateBookDataAccessObject.getHibernateBookDataAccessObject().getAllBooks()) {--%>
                <%--s += "<div class=\"jumbotron\"><h1>";--%>
                <%--s += book.getName() +--%>
                        <%--"</h1><p class=\"lead\">" + "Id: " +--%>
                        <%--book.getId() + "</p><p>" + "Author: " +--%>
                        <%--book.getAuthor() +--%>
                        <%--"</p><p>" + "Publisher: " +--%>
                        <%--book.getPublisher() + "</p><p>" +--%>
                        <%--"Price: " + book.getPrice() + "</p>" +--%>
                        <%--"<p><a class=\"btn btn-lg btn-success\" href=\"#\" role=\"button\">Buy now</a></p>" +--%>
                        <%--"</div>";--%>

            <%--}--%>
        <%--%>--%>
            <%--document.getElementById("books").innerHTML = <%=s%>;--%>
        <%--}--%>
    <%--</script>--%>




</div> <!-- /container -->


<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>

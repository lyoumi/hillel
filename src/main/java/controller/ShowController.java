package controller;

import model.Book;
import model.hibernate.HibernateBookDataAccessObject;
import service.BookStoreService;
import util.LoggerClass;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Objects;
import java.util.logging.Level;

@WebServlet("/books/show")
public class ShowController extends HttpServlet {

    private java.util.logging.Logger logger = LoggerClass.getInstance();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        String result = "";
        List<Book> books;
        String genre = req.getParameter("bookGenre");
        if (!Objects.equals(genre, null)){
            if (Objects.equals(genre, "All")){
                books = HibernateBookDataAccessObject.getHibernateBookDataAccessObject().getAllBooks();
            } else {
                books = BookStoreService.getBookStoreService().getBookListByGenre(genre);
                System.out.println(books);
            }
            for (Book book :
                    books) {

                String authors = "";
                for (int i = 0; i < book.getAuthors().size(); i++) {
                    authors += book.getAuthors().get(i).getName();
                    System.err.println(authors);
                    if (i < (book.getAuthors().size()-1)) authors  += ", ";
                }

                String genres = "";
                for (int i = 0; i < book.getGenres().size(); i++) {
                    genres += book.getGenres().get(i).getGenrename();
                    if (i < (book.getGenres().size()-1)) genres  += ", ";
                }

                result += "<div class=\"jumbotron\"><h1>";
                result += book.getName() +
                        "</h1><p class=\"lead\">" + "Id: " +
                        book.getId() + "</p><p>" + "Author: " +
                        authors + "</p><p>" + "Genres: " +
                        genres +
                        "</p><p>" + "Publisher: " +
                        book.getPublisher() + "</p><p>" +
                        "Price: " + book.getPrice() + "</p>" +
                        "<p><a class=\"btn btn-lg btn-success\" href=\"#\" role=\"button\">Buy now</a></p>" +
                        "</div>";

            }

            System.err.println("Result is" + result + "Genre " + genre);

            PrintWriter printWriter = resp.getWriter();
            printWriter.write(result);
        }

    }
}

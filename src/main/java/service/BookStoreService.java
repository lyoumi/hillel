package service;

import model.Author;
import model.Book;
import model.Genre;
import model.hibernate.HibernateAuthorDataAccessObject;
import model.hibernate.HibernateBookDataAccessObject;
import model.hibernate.HibernateGenreDataAccessObject;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

public class BookStoreService {


    private static BookStoreService bookStoreService;

    private HibernateAuthorDataAccessObject hibernateAuthorDataAccessObject = HibernateAuthorDataAccessObject.getHibernateAuthorDataAccessObject();
    private HibernateGenreDataAccessObject hibernateGenreDataAccessObject = HibernateGenreDataAccessObject.getHibernateGenreDataAccessObject();
    private HibernateBookDataAccessObject hibernateBookDataAccessObject = HibernateBookDataAccessObject.getHibernateBookDataAccessObject();

    public static BookStoreService getBookStoreService(){
        if (Objects.equals(bookStoreService, null)) bookStoreService = new BookStoreService();
        return bookStoreService;
    }

    public Author insertAuthor(Author author){
        Author currentAuthor = hibernateAuthorDataAccessObject.getAuthorByName(author.getName());
        if (Objects.equals(currentAuthor, null)) {
            author = hibernateAuthorDataAccessObject.createAuthor(author);
            return author;
        } else return currentAuthor;

    }

    public Genre insertGenre(Genre genre){
        Genre currentGenre = hibernateGenreDataAccessObject.getGenreByName(genre.getGenrename());
        if (Objects.equals(currentGenre, null)){
            genre = hibernateGenreDataAccessObject.createGenre(genre);
            return genre;
        } else return currentGenre;
    }

    public boolean insertBook(Book book){
        return hibernateBookDataAccessObject.addNewBook(book);
    }

    public List<Book> getBookListByGenre(String genre){
        List<Book> books = new ArrayList<>();
        for (Book book :
                hibernateBookDataAccessObject.getAllBooks()) {
            for (Genre bookGenre :
                 book.getGenres()) {
                if (Objects.equals(bookGenre.getGenrename(), genre)) books.add(book);
            }
        }
        return books;
    }
}

package com.jbk.servic;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jbk.dao.BookRepository;
import com.jbk.entity.Book;

@Service
public class BookService {

	 @Autowired
	    private BookRepository bookRepository;

	    public Book saveBook(Book book) {
	        return bookRepository.save(book);
	    }

	    public List<Book> getAllBooks() {
	        return bookRepository.findAll();
	    }

	    public Book getBookById(long id) {
	        return bookRepository.findById(id).orElse(null);
	    }
}

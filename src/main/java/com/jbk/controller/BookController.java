package com.jbk.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.jbk.entity.Book;
import com.jbk.servic.BookService;

@Controller
public class BookController {

	 @Autowired
	    private BookService bookService;

	    @GetMapping("/bookForm")
	    public String showBookForm(Model model) {
	        model.addAttribute("book", new Book());
	        return "book";
	    }

	    @PostMapping("/registerBook")
	    public String registerBook(@ModelAttribute("book") Book book, Model model) {
	        Book savedBook = bookService.saveBook(book);
	        model.addAttribute("book", savedBook);
	        return "bookDetails";
	    }

	    @GetMapping("/bookDetails")
	    public String showBookDetails(Model model) {
	        model.addAttribute("books", bookService.getAllBooks());
	        return "bookDetails";
	    }
}

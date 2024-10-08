package com.jbk.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.jbk.entity.Book;

@Repository
public interface BookRepository extends JpaRepository<Book, Long>{


}

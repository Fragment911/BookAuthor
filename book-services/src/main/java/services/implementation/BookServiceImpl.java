package services.implementation;

import api.entity.Book;
import api.interfaces.BookService;
import dao.repository.BookRepository;
import org.springframework.stereotype.Service;

@Service
public class BookServiceImpl extends BaseServiceImpl<Book, BookRepository> implements BookService {
}

package services.implementation;

import api.entity.Author;
import api.interfaces.AuthorService;
import dao.repository.AuthorRepository;
import org.springframework.stereotype.Service;

@Service
public class AuthorServiceImpl extends BaseServiceImpl<Author, AuthorRepository> implements AuthorService {
}

package web.controller;

import api.entity.Book;
import api.interfaces.AuthorService;
import api.interfaces.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;

@Controller
@RequestMapping("book")
public class BookController {
    @Autowired
    private BookService bookService;
    @Autowired
    private AuthorService authorService;

    @GetMapping("")
    public String getAll(Model model) {
        model.addAttribute("bookList", bookService.getAll());
        return "book/list";
    }
    @GetMapping("create")
    public String empty(Model model) {
        model.addAttribute("authorList", authorService.getAll());
        return "book/create";
    }

    @PostMapping("create")
    public String create(@Valid Book book) {
        bookService.create(book);
        return "redirect:/book";
    }

    @GetMapping("update/{id}")
    public String edit(Model model, @PathVariable("id") Long id) {
        Book book = bookService.get(id);
        model.addAttribute("book", book);
        model.addAttribute("authorList", authorService.getAll());
        return "book/update";
    }

    @PostMapping("update")
    public String update(@Valid Book book) {
        bookService.update(book);
        return "redirect:/book";
    }

    @GetMapping("remove/{id}")
    public String delete(@PathVariable("id") Long id) {
        bookService.delete(id);
        return "redirect:/book";
    }
}
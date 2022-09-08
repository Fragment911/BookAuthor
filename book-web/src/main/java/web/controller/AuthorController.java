package web.controller;

import api.entity.Author;
import api.interfaces.AuthorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;

@Controller
@RequestMapping("author")
public class AuthorController {
    @Autowired
    private AuthorService authorService;

    @GetMapping("")
    public String getAll(Model model) {
        model.addAttribute("authorList", authorService.getAll());
        return "author/list";
    }

    @GetMapping("create")
    public String empty() {
        return "author/create";
    }

    @PostMapping("create")
    public String create(@Valid Author author) {
        authorService.create(author);
        return "redirect:/author";
    }

    @GetMapping("{id}")
    public String get(Model model, @PathVariable("id") Long id) {
        model.addAttribute("author", authorService.get(id));
        return "author/info";
    }

    @GetMapping("update/{id}")
    public String edit(Model model, @PathVariable("id") Long id) {
        model.addAttribute("author", authorService.get(id));
        return "author/update";
    }

    @PostMapping("update")
    public String update(@Valid Author author) {
        authorService.update(author);
        return "redirect:";
    }

    @GetMapping("remove/{id}")
    public String delete(@PathVariable("id") Long id) {
        authorService.delete(id);
        return "redirect:/author";
    }
}
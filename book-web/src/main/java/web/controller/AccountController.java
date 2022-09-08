package web.controller;

import api.interfaces.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("account")
public class AccountController {
    @Autowired
    private AccountService accountService;

    @GetMapping("")
    public String getAll(Model model) {
        model.addAttribute("accountList", accountService.getAll());
        return "account/list";
    }

    @GetMapping("login")
    public String login() {
        return "account/login";
    }
}
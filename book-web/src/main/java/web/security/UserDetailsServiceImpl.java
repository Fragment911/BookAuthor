package web.security;

import api.entity.Account;
import api.interfaces.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class UserDetailsServiceImpl implements org.springframework.security.core.userdetails.UserDetailsService {
    @Autowired
    private AccountService accountService;

    @Override
    public UserDetails loadUserByUsername(String login) throws UsernameNotFoundException {
        Optional<Account> accounts = accountService.findByLogin(login);

        accounts
                .orElseThrow(() -> new UsernameNotFoundException("Not found!"));
        return accounts
                .map(UserDetailsService::new).get();
    }
}

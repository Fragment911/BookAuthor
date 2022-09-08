package services.implementation;

import api.entity.Account;
import api.interfaces.AccountService;
import dao.repository.AccountRepository;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class AccountServiceImpl extends BaseServiceImpl<Account, AccountRepository> implements AccountService {

    public Optional<Account> findByLogin(String username) {
        return tRepository.findByLogin(username);
    }

}

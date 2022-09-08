package api.interfaces;

import api.entity.Account;
import org.springframework.dao.DataAccessException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Optional;

public interface AccountService extends BaseService<Account> {
    Optional<Account> findByLogin(String username);
}

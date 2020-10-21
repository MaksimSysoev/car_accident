package ru.sysoevm.accident.control;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import ru.sysoevm.accident.model.Accident;
import ru.sysoevm.accident.model.User;
import ru.sysoevm.accident.repository.AuthorityRepository;
import ru.sysoevm.accident.repository.UserRepository;

import java.util.Iterator;
import java.util.List;

@Controller
public class RegControl {

    private final PasswordEncoder encoder;
    private final UserRepository users;
    private final AuthorityRepository authorities;

    public RegControl(PasswordEncoder encoder, UserRepository users, AuthorityRepository authorities) {
        this.encoder = encoder;
        this.users = users;
        this.authorities = authorities;
    }

    @PostMapping("/reg")
    public String save(@ModelAttribute User user, Model model) {
        String errorMessge = null;
        String result = "redirect:/login";
        Iterator<User> it =  users.findAll().iterator();
        while(it.hasNext()) {
            String userName = it.next().getUsername();
            if (userName.equals(user.getUsername())) {
                errorMessge = "A user with this name exists!";
                break;
            }
        }

        if (errorMessge==null) {
            user.setEnabled(true);
            user.setPassword(encoder.encode(user.getPassword()));
            user.setAuthority(authorities.findByAuthority("ROLE_USER"));
            users.save(user);
            result = "redirect:/login";
        } else  {
            model.addAttribute("errorMessge", errorMessge);
            result = "/reg";
        }
    return result;
    }

    @GetMapping("/reg")
    public String reg(@ModelAttribute Accident accident) {
        return "reg";
    }
}
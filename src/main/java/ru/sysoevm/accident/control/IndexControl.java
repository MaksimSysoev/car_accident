package ru.sysoevm.accident.control;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import ru.sysoevm.accident.model.Accident;
//import ru.sysoevm.accident.repository.AccidentHibernate;
//import ru.sysoevm.accident.repository.AccidentJdbcTemplate;
import ru.sysoevm.accident.repository.AccidentMem;
import ru.sysoevm.accident.repository.AccidentRepository;

import java.util.ArrayList;
import java.util.List;


@Controller
public class IndexControl {
    //private final AccidentJdbcTemplate accidents;

    /*
    public IndexControl(AccidentJdbcTemplate accidents) {
        this.accidents = accidents;
    }


    private final AccidentHibernate accidents;

    public IndexControl(AccidentHibernate accidents) {
        this.accidents = accidents;
    }
*/
    private final AccidentRepository accidents;

    public IndexControl(AccidentRepository accidents) {
        this.accidents = accidents;
    }

    @GetMapping("/")
    public String index(Model model) {
        model.addAttribute("user", SecurityContextHolder.getContext().getAuthentication().getPrincipal());
        model.addAttribute("accidents", accidents.findAll());
        return "index";
    }
}
package ru.sysoevm.accident.control;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import ru.sysoevm.accident.model.Accident;
import ru.sysoevm.accident.model.AccidentType;
import ru.sysoevm.accident.model.Rule;
import ru.sysoevm.accident.repository.AccidentMem;
import ru.sysoevm.accident.repository.AccidentRepository;

import java.util.ArrayList;
import java.util.List;

@Controller
public class AccidentControl {

    private final AccidentRepository accidents;

    public AccidentControl(AccidentRepository accidents) {
        this.accidents = accidents;
    }

    @GetMapping("/create")
    public String create(Model model) {
        return "accident/create";
    }

    @PostMapping("/create")
    public String save(@ModelAttribute Accident accident) {
        accidents.save(accident);
        return "redirect:/";
    }

    @GetMapping("/update")
    public String update(@RequestParam("id") int id, Model model) {
        model.addAttribute("accident", accidents.findById(id).get());
        return "accident/update";
    }

    @PostMapping("/update")
    public String update(@ModelAttribute Accident accident) {
        accidents.save(accident);
        return "redirect:/";
    }

    @GetMapping("/delete")
    public String delete(@RequestParam("id") int id) {
        accidents.delete(accidents.findById(id).get());
        return "redirect:/";
    }

}
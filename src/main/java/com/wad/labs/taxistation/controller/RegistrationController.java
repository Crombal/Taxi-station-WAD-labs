package com.wad.labs.taxistation.controller;

import com.wad.labs.taxistation.controller.util.ControllerUtils;
import com.wad.labs.taxistation.domain.User;
import com.wad.labs.taxistation.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;
import java.util.Map;

@Controller
@RequestMapping("/registration")
public class RegistrationController {

    @Autowired
    private UserService userService;

    @GetMapping
    public String registration() {

        return "registration";
    }

    @PostMapping
    public String registerUser(
            @RequestParam("password2") String passwordConfirm,
            @Valid User user,
            BindingResult bindingResult,
            Model model
    ) {
        boolean isConfirmEmpty = StringUtils.isEmpty(passwordConfirm);

        if (isConfirmEmpty) {
            model.addAttribute("password2Error", "Введіть підтвердження пароля!");
        }

        if (user.getPassword() != null && !user.getPassword().equals(passwordConfirm)) {

            model.addAttribute("passwordError", "Паролі не співпадають!");

            return "registration";
        }

        if (isConfirmEmpty || bindingResult.hasErrors()) {
            Map<String, String> errors = ControllerUtils.getErrors(bindingResult);

            model.mergeAttributes(errors);

            return "registration";
        }

        if (!userService.addUser(user)) {

            model.addAttribute("usernameError", "Користувач з таким іменем вже існує!");

            return "registration";
        }

        return "redirect:/login";
    }
}

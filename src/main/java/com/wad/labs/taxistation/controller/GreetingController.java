package com.wad.labs.taxistation.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class GreetingController {

    @GetMapping
    public String greeting() {
        return "greeting";
    }

    @GetMapping("/description")
    public String description() {
        return "description";
    }

    @GetMapping("/main-report")
    public String mainReport() {
        return "main_report";
    }
}

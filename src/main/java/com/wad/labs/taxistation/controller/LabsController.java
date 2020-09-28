package com.wad.labs.taxistation.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LabsController {

    @GetMapping("/get_main_report_html")
    public ModelAndView getMainReportHtml() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("labs_code/main-report.html");
        return modelAndView;
    }

    @GetMapping("/get_description_html")
    public ModelAndView getDescriptionHtml() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("labs_code/description.html");
        return modelAndView;
    }

}

package de.c24.finacc.klt.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author Jörn Schricker
 */
@Controller
public class IndexController {

    /**
     * the index page
     * @return ModelAndView for index page.
     */
    @RequestMapping(value = { "/", "/index" }, method = RequestMethod.GET)
    public ModelAndView index() {
        ModelAndView mav = new ModelAndView("/index");
        mav.addObject("formName", "Anmeldeformular");
        return mav;
    }
}

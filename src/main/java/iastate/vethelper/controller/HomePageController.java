package iastate.vethelper.controller;

import iastate.vethelper.Patient;
import jdk.nashorn.internal.ir.RuntimeNode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

@Controller
@RequestMapping("home")
public class HomePageController {

    private static final Logger LOG = LoggerFactory.getLogger(HomePageController.class);

    @RequestMapping("/page")
    public String homePage(Model model)
    {
        LOG.info("controller is being hit");
        return "home";
    }

    @RequestMapping("/hello")
    public String helloWorld(){
        return "Hello World!";
    }

    @RequestMapping(value="/page", method = RequestMethod.POST)
    public String addPatient(@ModelAttribute Patient patient) {
        LOG.info("Post request reached");
        LOG.info("getName: " + patient.getName());
        LOG.info("getOwnerName: " + patient.getOwnerName());
        return "result";
    }

}



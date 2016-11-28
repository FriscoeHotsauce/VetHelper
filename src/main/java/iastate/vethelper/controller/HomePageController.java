package iastate.vethelper.controller;

import iastate.vethelper.Patient;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("home")
public class HomePageController {

    private static final Logger LOG = LoggerFactory.getLogger(HomePageController.class);

    @RequestMapping(value = "/page", method = RequestMethod.GET)
    public String homePage(Model model)
    {
        LOG.info("That was a GET request");
        model.addAttribute("patient", new Patient());
        return "home";
    }

    @RequestMapping(value = "/page/add", method = RequestMethod.POST)
    public String addPatient(@ModelAttribute Patient patient)
    {
        LOG.info("That was a POST request");
        LOG.info("Name: " + patient.getName());
        LOG.info("Owner: " + patient.getOwner());

        return "add";
    }


    @RequestMapping("/hello")
    public String helloWorld(){
        return "Hello World!";
    }
}

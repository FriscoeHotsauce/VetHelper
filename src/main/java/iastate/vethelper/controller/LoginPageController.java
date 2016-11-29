package iastate.vethelper.controller;

/**
 * Created by Thomas Kearney on 11/27/2016.
 */
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

@Controller
@RequestMapping("login")
public class LoginPageController {
    private static final Logger LOG = LoggerFactory.getLogger(LoginPageController.class);

    @RequestMapping(value = "/page", method = RequestMethod.GET)
    public String getLogin(Model model)
    {
        LOG.info("controller is being hit");
        return "login";
    }
    @RequestMapping(value = "/page", method = RequestMethod.POST)
        public String postLogin(Model model)
        {
            LOG.info("controller is being hit");
            return "redirect:/home/page";
        }

    @RequestMapping("/hello")
    public String helloWorld(){
        return "Hello World!";
    }
}

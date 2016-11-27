package iastate.vethelper.controller;

/**
 * Created by Thomas Kearney on 11/27/2016.
 */
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

@Controller
@RequestMapping("login")
public class LoginPageController {
    private static final Logger LOG = LoggerFactory.getLogger(LoginPageController.class);

    @RequestMapping("/page")
    public String homePage(Model model)
    {
        LOG.info("controller is being hit");
        return "login";
    }

    @RequestMapping("/hello")
    public String helloWorld(){
        return "Hello World!";
    }
}

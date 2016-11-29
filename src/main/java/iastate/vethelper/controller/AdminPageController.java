package iastate.vethelper.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

@Controller
@RequestMapping("newAdminPage")
public class AdminPageController {

    private static final Logger LOG = LoggerFactory.getLogger(AdminPageController.class);

    @RequestMapping("/page")
    public String homePage(Model model)
    {
        LOG.info("AdminPageController is being hit");
        return "newAdminPage";
    }

    @RequestMapping("/hello")
    public String helloWorld(){
        return "You've reached the Admin Page Controller!";
    }
}
package iastate.vethelper.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/home")
public class HomePageController {

    @RequestMapping("/page")
    public String homePage(){
        return "Hello World";
    }
}

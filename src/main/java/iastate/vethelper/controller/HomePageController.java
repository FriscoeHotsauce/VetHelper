package iastate.vethelper.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/home")
public class HomePageController {

    @RequestMapping("/page")
    public String homePage(){
        return "Hello World";
    }
}

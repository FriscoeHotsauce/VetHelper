package iastate.vethelper.controller;

import iastate.vethelper.Entry;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import java.sql.*;
import java.sql.DriverManager;

@Controller
@RequestMapping("home")
public class HomePageController {

    private static final Logger LOG = LoggerFactory.getLogger(HomePageController.class);

    @RequestMapping(value="/page", method = RequestMethod.GET)
    public String homePage(Model model)
    {
        LOG.info("controller is being hit");
        model.addAttribute("entry", new Entry());
        return "home";
    }

    @RequestMapping("/hello")
    public String helloWorld(){
        return "Hello World!";
    }

    @RequestMapping(value="/page", method = RequestMethod.POST)
    public String addEntry(@ModelAttribute(value="entry") Entry entry) {
        LOG.info("Post request reached");
        LOG.info("getMMR: " + entry.getMMR());

        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vethelper", "root" , "vethelper");
            Statement statement = con.createStatement();
            String command = "insert into entry values(\""
                    + entry.getMMR() + "\" , \" "
                    + entry.getPCV() + "\" , \" "
                    + entry.getAzo() + "\" , \" "
                    + entry.getGlu() + "\" , \" "
                    + entry.getLac() + "\" , \" "
                    + entry.getKet() + "\" , \" "
                    + entry.getPT() + "\" , \" "
                    + entry.getPTT() + "\")";
                statement.executeUpdate(command);
        }

        catch(Exception exc)
        {
            exc.printStackTrace();
        }
        return "home";
    }

}



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
        Patient patient = new Patient();
        patient.setName("NAME");
        patient.setOwnerName("OWNER NAME");
        patient.setMMR("123");
        return "home";
    }

    @RequestMapping("/hello")
    public String helloWorld(){
        return "Hello World!";
    }

    @RequestMapping(value="/page/add", method = RequestMethod.POST)
    public String addPatient(@ModelAttribute(value="patient") Patient patient) {
        LOG.info("Post request reached");
        LOG.info("getName: " + patient.getName());
        LOG.info("getOwnerName: " + patient.getOwnerName());
        LOG.info("getMMR: " + patient.getMMR());

        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vethelper", "root" , "vethelper");
            Statement statement = con.createStatement();
            String command = "insert into patients values( \"" + patient.getName() + "\" , \" " + patient.getOwnerName() + "\" , \" " + Integer.parseInt(patient.getMMR()) + "\")";
                statement.executeUpdate(command);
        }

        catch(Exception exc)
        {
            exc.printStackTrace();
        }
        return "home";
    }

}



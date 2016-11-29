package iastate.vethelper.controller;

import iastate.vethelper.entity.Patient;
import iastate.vethelper.repo.PatientRepo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("home")
public class HomePageController {

    @Autowired
    PatientRepo patientRepo;

    private static final Logger LOG = LoggerFactory.getLogger(HomePageController.class);

    @RequestMapping(value="/page", method=RequestMethod.GET)
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

    @RequestMapping(value="/page", method = RequestMethod.POST)
    public String addPatient(@ModelAttribute(value="patient") Patient patient) {
        LOG.info("Post request reached");
        LOG.info("getName: " + patient.getName());
        LOG.info("getOwnerName: " + patient.getOwnerName());
        LOG.info("getMMR: " + patient.getMMR());
        patientRepo.save(patient);
        System.out.println(patientRepo.findAll());
        return "patient";
    }

}



package org.openmrs.module.patients.web.controller;

/**
 * Created by alex on 5/14/14.
 */
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.openmrs.Encounter;
import org.openmrs.Patient;
import org.openmrs.PatientIdentifier;
import org.openmrs.api.context.Context;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class EncounterManageController {
    protected final Log log = LogFactory.getLog(getClass());

    @RequestMapping(value = "/module/patients/encounter", method = RequestMethod.GET)


    public void manage(ModelMap model, @RequestParam(required = false ,value="patientId") Integer pid){
        model.addAttribute("user", Context.getAuthenticatedUser());



        List<Encounter> allEncounters = Context.getEncounterService().getEncountersByPatient(Context.getPatientService().getPatient(pid));
        model.addAttribute("encounters",allEncounters);
    }
}

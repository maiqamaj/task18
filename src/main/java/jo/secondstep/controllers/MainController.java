package jo.secondstep.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = { "", "HelloWorld" })
public class MainController {

	@Autowired
	HrService hrService;

	@RequestMapping(method = RequestMethod.GET)
	public String getAllRegion(ModelMap modelmap) {
		modelmap.put("regions", hrService.findAll());
		return "index";

	}

	@RequestMapping(method = RequestMethod.GET, params = { "fName", "lName" })
	public String HelloName(@RequestParam("fName") String fName, String lName, ModelMap modelmap) {

		getAllRegion(modelmap);
		return "index";
	}

	@RequestMapping(method = RequestMethod.GET, params = { "language", "fName", "lName" })
	public String multipleLanguage(@RequestParam String language, String fName, String lName, ModelMap modelmap) {
		getAllRegion(modelmap);
		return "index";
	}

}

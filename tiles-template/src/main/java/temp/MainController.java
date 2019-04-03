package temp;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.my.MyService;
import com.ora.OraService;

@Controller
public class MainController {

	@Resource(name="oraservice")
	private OraService oraservice;

	@Resource(name="myservice")
	private MyService myservice;

	@RequestMapping("/test.do")
	public ModelAndView main(ModelAndView modelAndView){
		System.out.println("test");
		modelAndView.setViewName("test");
		String test_ora = oraservice.test();
		System.out.println("■■■■■■■■■■■■■■■■■■■■■■■■■■■■ "+test_ora+" ■■■■■■■■■■■■■■■■■■■■■■■■■■■■");
		String test_my = myservice.test_my();
		System.out.println("■■■■■■■■■■■■■■■■■■■■■■■■■■■■ "+test_my+" ■■■■■■■■■■■■■■■■■■■■■■■■■■■■");

		return modelAndView;
	}

	@RequestMapping("/test3.do")
	public ModelAndView test3(ModelAndView modelAndView){
		System.out.println("test3");
		modelAndView.setViewName("test3");
		return modelAndView;
	}
}

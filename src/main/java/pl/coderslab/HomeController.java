package pl.coderslab;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HomeController {

    @RequestMapping("/")
    @ResponseBody
    public String home() {
        return "hello world !!!";
    }

    @RequestMapping("/hello")
    public String hello() {
        return "index";
    }

    @GetMapping("/start")
    public String start() {
        return "index";
    }
}

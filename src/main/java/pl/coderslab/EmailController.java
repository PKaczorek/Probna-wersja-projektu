package pl.coderslab;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.Product.Category;
import pl.coderslab.Product.CategoryService;

import java.util.List;

@RestController
public class EmailController {

    private final JavaMailSender javaMailSender;
    private final CategoryService categoryService;

    @Autowired
    public EmailController(JavaMailSender javaMailSender, CategoryService categoryService) {
        this.javaMailSender = javaMailSender;
        this.categoryService = categoryService;
    }

    @RequestMapping("/sendEmail")
    public String sendEmailForm(Model model) {
        List<Category> categories = categoryService.getAllCategories();
        model.addAttribute("categories", categories);
        return "sendEmail"; // Renderuje sendEmail.jsp
    }
    @PostMapping("/sendEmail")
    @ResponseBody
    public String sendEmail(@RequestParam("comment") String comment, @RequestParam("email") String email) {
        SimpleMailMessage message = new SimpleMailMessage();
        message.setTo("olist122@gmail.com");
        message.setSubject("Nowa Wiadomość");
        message.setText("Wiadomość: " + comment + "\nAdres e-mail: " + email);

        javaMailSender.send(message);
        return "redirect:/success";
    }
    @GetMapping("/success")
    @ResponseBody
    public String getSuccessPage() {
        SimpleMailMessage message = new SimpleMailMessage();
        message.setTo("olist122@gmail.com");
        message.setSubject("Nowa Wiadomość");
        message.setText("Wiadomość: " + "\nAdres e-mail: " );

        javaMailSender.send(message);


        return "success";
    }}

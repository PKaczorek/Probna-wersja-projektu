package pl.coderslab.Product;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import javax.naming.Binding;
import javax.validation.Valid;
import java.util.List;
import java.util.Optional;

@Controller
public class CategoryController {
    private final CategoryService categoryService;
    private final ProductService productService;

    public CategoryController(CategoryService categoryService, ProductService productService) {
        this.categoryService = categoryService;
        this.productService = productService;
    }

    @GetMapping("/categories")
    public String getAllCategories(Model model) {
        List<Category> categories = categoryService.getAllCategories();
        model.addAttribute("categories", categories); // Zmiana atrybutu na "categories"
        return "categories";
    }
@GetMapping("/categories/{id}")
public String getCategoryProducts(@PathVariable Long id, Model model) {
    Optional<Category> category = categoryService.getCategoryById(id);
    List<Product> products = productService.getProductsByCategory(category);
    model.addAttribute("category", category);
    model.addAttribute("products", products);
    return "categoryProducts";
}
    @GetMapping("categories/create")
    public String showCreateForm( Model model) {
        model.addAttribute("category", new Category());
        return "categoryForm";
    }

    @PostMapping("categories/create")
    public String createCategory(@Valid Category category, BindingResult bindingResult) {
        if (bindingResult.hasErrors()){
            return "categoryForm";
        }
        categoryService.saveCategory(category);
        return "redirect:/categories";
    }

    @GetMapping("categories/edit/{id}")
    public String showEditForm(@PathVariable Long id, Model model) {
        Optional<Category> category = categoryService.getCategoryById(id);
        model.addAttribute("category", category.get());
        return "categoryForm";
    }
    @PostMapping("categories/edit/{id}")
    public String updateCategory(@Valid Category category, BindingResult bindingResult) {
        if (bindingResult.hasErrors()){
            return "categoryForm";
        }
        categoryService.saveCategory(category);
        return "redirect:/categories";
    }



    @GetMapping("categories/delete/{id}")
    public String deleteCategory(@PathVariable Long id) {
        categoryService.deleteCategoryById(id);
        return "redirect:/categories";
    }

}
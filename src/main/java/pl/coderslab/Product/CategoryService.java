package pl.coderslab.Product;

import java.util.List;
import java.util.Optional;

public interface CategoryService {
    List<Category> getAllCategories();

    Optional<Category> getCategoryById(Long id);

    void saveCategory(Category category);

    void deleteCategoryById(Long id);
}




import UIKit

class ViewController: UIViewController {
        
    @IBOutlet weak var recipeImage: UIImageView!
    @IBOutlet weak var recipeName: UILabel!
    @IBOutlet weak var recipeDescription: UITextView!
    
    let recipes = Recipe.getRecipes() // it returns an array of Recipe
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateRecipeAtIndex(index: 0)
        
        view.backgroundColor = .brown
        
    }

    @IBAction func recipeChanged(_ recipeButton: UIButton) {
        updateRecipeAtIndex(index: recipeButton.tag)
    
        recipeButton.backgroundColor = .clear
        recipeButton.layer.cornerRadius = 10
        recipeButton.layer.borderWidth = 1
        recipeButton.layer.borderColor = UIColor.black.cgColor

    }
    
    func updateRecipeAtIndex (index: Int) {
        // recipe button tags will be 0, 1 and 2
        let recipe = recipes[index] // value of index, example.. 0, 1, 2
        
        // update the UI elements using the current Recipe instance(object) above.
        
        recipeImage.image = recipe.image
        recipeName.text = recipe.name
        recipeDescription.text = recipe.recipeDescription.description
        
    }
}


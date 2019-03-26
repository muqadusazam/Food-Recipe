//
//  ViewController.swift
//  Food Recipe
//
//  Created by Muqadus on 20/3/19.
//  Copyright © 2019 Muqadus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var titleText = ""
    var ingredients = ""
    
    @IBOutlet weak var recipe: UILabel!
    @IBOutlet weak var ingredientsTxt: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        recipe.text = "Ingredients & Method"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.title = titleText
        self.ingredientsTxt.text = ingredients
    }


}


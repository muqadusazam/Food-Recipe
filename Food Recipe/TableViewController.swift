//
//  TableViewController.swift
//  Food Recipe
//
//  Created by Muqadus on 20/3/19.
//  Copyright © 2019 Muqadus. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    struct objects {
        var sectionName: String!
        var sectionObjects: [String]!
    }
    
    var items = [objects]()
    var currentSelectedItem = ""
    var recipeText: String?
    var recipeItems = ["Apple Juice":
                        "+\t6 apples, cored and chopped\n" + "+\t6 cups water\n\n\n" +
                        "1. Place apples and water in a saucepan and bring to the boil.\n" +
                        "2. Simmer for 15-20 minutes.\n" +
                        "3. Mash mixture with a potato masher in the saucepan.\n" +
                        "4. Strain through a sieve and store in clean bottle in the refrigerator.",
                       
                       "Asian Broccoli":
                        "+\tBroccoli, trimmed aggressively: (1 pound)\n" +
                        "+\tSesame oil: (1 tsp)\n" +
                        "+\tMinced garlic (From a jar): (1 tsp)\n" +
                        "+\tMinced ginger (From a jar): (1 tsp)\n" +
                        "+\tSoy Sauce garlic: (1 tbsp)\n" +
                        "+\tRice wine vinegar: (1 tbsp)\n" +
                        "+\tSalt and pepper: (To taste)\n\n\n" +
                        "1. Add 1/2 inch water to a microwave safe dish with a cover. Add broccoli, cover and cook in the microwave for 5 minutes (or more, see notes above) or until broccoli is nearly cooked.\n" +
                        "2. While broccoli cooks, assemble remaining ingredients\n" +
                        "3. Pour over the broccoli, cover and let rest for 5 minutes.",
                       
                       "Butter Chicken":
                        "+\tChicken boneless: (1)\n" +
                        "+\tSmall onion: (1)\n" +
                        "+\tGarlic boneless: (3-4 Flakes)\n" +
                        "+\tGinger: (1 piece)\n" +
                        "+\tTomato ready made puree: (1/2 cup)\n" +
                        "+\tGaram Masala: (1 tsp)\n" +
                        "+\tDhania powder: (1/2 tsp)\n" +
                        "+\tJeera powder: (1/2 tsp)\n" +
                        "+\tDegi mirch: (1/2 tsp)\n" +
                        "+\tSugar: (1 tsp)\n" +
                        "+\tKasoori methi: (1 tsp)\n" +
                        "+\tCashew nuts ground to paste: (4 tbsp)\n" +
                        "+\tCream: (1/2 cup)\n" +
                        "+\tOil: (3 tbsp)\n" +
                        "+\tSlit green chili for garnishing\n" +
                        "+\tCream: (1/2 tsp)\n\n\n" +
                        "1. Grind together onion garlic ginger, mix oil, onion paste. Add garam masala, jeera, dhania.\n" +
                        "2. Micro high uncovered for 3 minutes. Add tomato puree, red chilli,sugar, chicken methi. Mix well.\n" +
                        "3. Micro high covered for 6 minutes.\n" +
                        "4. Add salt, cashew paste, micro high 2 minutes. Add cream, micro high 2 minutes. Standing time 2 minutes. Garnish with slit chilies and cream.",
                       
                       "Caramel Biscuit":
                        "+\tBrown sugar (packed): (1/3 cup)\n" +
                        "+\tButter: (3 tbsp)\n" +
                        "+\tWater: (1 tbsp)\n" +
                        "+\tRefrigerated biscuits (1 - 8 ounce) can\n" +
                        "+\tPecans, chopped: (1/2 cup)\n\n\n" +
                        "1. Combine brown sugar, butter and water in glass pie plate.\n" +
                        "2. Microwave on medium until butter is melted (30 sec.).\n" +
                        "3. Stir and add nuts to dish. (optional). Separate biscuits on wax paper and cut each biscuit into quarters.\n" +
                        "4. Add the biscuits to the sugar mixture.\n" +
                        "5. Stir to coat each piece. Push biscuits away from the center of the pie plate and then set a custard cup in the middle of the plate open end up.\n" +
                        "6. Microwave on a medium setting for 5 to 5-1/2 minutes or until the biscuits are no longer doughy. Let stand 2-minutes. Twist custard cup to remove it. Invert biscuit ring onto a serving plate and enjoy!",
                       
                       "Chocolate Chip":
                        "+\tUnsalted butter, softened: (180G)\n" +
                        "+\tBrown sugar: (3/4 cup - 135G)\n" +
                        "+\tvanilla extract: (1 tsp)\n" +
                        "+\tEggs (2)\n" +
                        "+\tPlain (All-purpose) flour, sifted (2 cups - 300G)\n" +
                        "+\tBaking powder, sifted (1 tsp)\n" +
                        "+\tDark chocolate, chopped (150G)\n\n\n" +
                        "1. Preheat oven to 180ºC.\n" +
                        "2. Place the butter, sugar and vanilla in the bowl of an electric mixer and beat until pale and creamy.\n" +
                        "3. Gradually add the eggs and beat well.\n" +
                        "4. Add the flour and baking powder and beat until a smooth dough forms.\n" +
                        "5. Fold through the chocolate.\n" +
                        "6. Roll 2 tablespoonfuls of the mixture into balls, place on baking trays lined with non-stick baking paper and press to flatten.\n" +
                        "7. Bake for 12–15 minutes or until golden. Allow to cool on the trays. Makes 12.\n",
                       
                       "Dry Chicken Chilli":
                        "+\tChicken cut into pieces (350 G)\n" +
                        "+\tGinger finely chopped (1/2 piece)\n" +
                        "+\tOnion cut into pieces (1/2 piece)\n" +
                        "+\tGarlic finely chopped (2-3 flakes)\n" +
                        "+\tGreen Chillies (4-5)\n" +
                        "+\tAjinimoto (1/2 tsp)\n" +
                        "+\tCapsicum (1 piece)\n" +
                        "+\tVinegar (1 tbsp)\n" +
                        "+\tWhite wine - Optional (2 tsp)\n" +
                        "+\tCornflour mixed with 1/2 cup water (1-1/2 tbsp)\n" +
                        "+\tSugar (1 tsp)\n" +
                        "+\tSalt (1 tsp)\n" +
                        "+\tSoya sauce (2 tbsp)\n\n\n" +
                        "1. Take a microwave safe dish, Add 3 tbsp oil, onion, ginger, garlic, soya sauce, ajinomoto,and chicken pieces. Mix.\n" +
                        "2. Microwave covered for 5 minutes.\n" +
                        "3. Now add all the remaining ingredients and mix it well.\n" +
                        "4. Microwave uncovered for 3 minutes. Mix when done and serve hot.",
                       
                       "Dry Chilli Paneer":
                        "+\tPaneer - Sliced into small cubes (300 G)\n" +
                        "+\tBig Onion - Chopped Length wise (1)\n" +
                        "+\tGinger - Chopped very finely (small pieces)\n" +
                        "+\tGarlic - Chopped finely (2)\n" +
                        "+\tSoya sauce (2 tsp)\n" +
                        "+\tVinegar (1/2 tsp)\n" +
                        "+\tGreen capsicum - cut into small square shaped (1)\n" +
                        "+\tAjinomoto (1/2 tsp)\n" +
                        "+\tGreen chillies - sliced length wise (3)\n" +
                        "+\tCornflour - mixed in 6 tsp of water (1 tsp)\n" +
                        "+\tOrange food colour (1/4 tsp)\n" +
                        "+\tSalt (To taste)\n" +
                        "+\tOil (3-4 tsp)\n\n\n" +
                        "1. Take a microwave dish and oil. Then add onion, ginger, garlic, ajinomoto, soya sauce and the sliced paneer cube.\n" +
                        "2. Mix every thing together.\n" +
                        "3. Cover the dish with the microwave lid.\n" +
                        "4. Microwave for 5 mins. \n" +
                        "5. Then take the vessel out and add vinegar, green chillies, capsicum, salt and the cornflour water, orange food colour and mix very well.\n" +
                        "6. Now microwave for 4 mins without covering the vessel.",
                       
                       "Dry Minced Meat":
                        "+\tLightly fried onion and garlic (2 tsp)\n" +
                        "+\tSoya sauce (2 tbsp)\n" +
                        "+\tFinely chopped ginger (1 tsp)\n" +
                        "+\tRed chilli powder (1 tsp)\n" +
                        "+\tRoasted and ground coriander powder (1 tbsp)\n" +
                        "+\tRoasted and ground cummin seed powder (1 tsp)\n" +
                        "+\tGaram masala powder (1 tsp)\n" +
                        "+\tMinced meat (500 G)\n" +
                        "+\tSalt (To taste)\n" +
                        "+\tCoconut milk (1 cup)\n" +
                        "+\tTamarind pulp (2 tsp)\n" +
                        "+\tSoya sauce (1/2 cup)\n" +
                        "+\tJaggery (2 tsp)\n" +
                        "+\tSoya sauce (1 tbsp)\n" +
                        "+\tFinely chopped spring onions (1 tbsp)\n" +
                        "+\tFinely chopped coriander leaves (1 tbsp)\n\n\n" +
                        "1. Microwave all the ingredients upto garam masala powder for 2 minutes.\n" +
                        "2. Stir in mince and microwave for 5 minutes stirring once in between.\n" +
                        "3. Add the rest of the ingredients and microwave for 20 minutes stirring three or four times in between until the curry is dry.",
                       
                       "Egg Fried Rice":
                        "+\tOil (2 tbsp)\n" +
                        "+\tGarlic puree (1 tsp)\n" +
                        "+\tGreen chilli paste (1 tsp)\n" +
                        "+\tSpring onions sliced (4)\n" +
                        "+\tButton mushrooms (100 G)\n" +
                        "+\tEggs beaten (100 G)\n" +
                        "+\tPeas(50 G)\n" +
                        "+\tSalt and Pepper (To taste)\n" +
                        "+\tLong grained rice cooked (2 tsp)\n" +
                        "+\tSoya sauce (175 G)\n" +
                        "+\tDark soy sauce (1 tbsp)\n\n\n" +
                        "1. Place the oil in a 10 inch flan dish together with spring onion, red and green capsicum, mix well and cook on high for 2-3 minutes until tender.\n" +
                        "2. Add the potato ensuring the mixture is evenly distributed over the base of the flan dish, Pour in the beaten egg.\n" +
                        "3. Season with salt and chili powder and coriander.\n" +
                        "4. Place on low rack, cook on dual grill medium for 9-10 minutes until evenly brown and crispy.",
                       
                       "Fish Fingers":
                        "+\tFish (boneless) - pref salmon (250 G)\n" +
                        "+\tTomato sauce (4 tsp)\n" +
                        "+\tSoy sauce (1 tsp)\n" +
                        "+\tChilly powder (1/2 tsp)\n" +
                        "+\tSalt (To taste)\n" +
                        "+\tread crumbs\n\n\n" +
                        "1. Microwave the fish for 4 mins.\n" +
                        "2. Remove off the skin & scramble the fish.\n" +
                        "3. Add tomato and soy sauce, chilly powder, salt.\n" +
                        "4. Roll the fish into fingers & coat with bread crumbs.\n" +
                        "5. Microwave it again or deep fry in oil or shallow fry in a tawa.\n" +
                        "6. Serve with tomato sauce.",
                       
                       "Fried Eggs":
                        "+\t(5 ml) butter or bacon fat (1 tsp)\n" +
                        "+\tEgg (1)\n" +
                        "+\tSalt and pepper (To taste)\n\n\n" +
                        "1. Place the butter or bacon fat in the browning pan and melt 30 to 40 seconds at HIGH.\n" +
                        "2. Break the egg into the melted fat\n" +
                        "3. Pierce the yolk and the white gently with the point of a knife 3 to 4 times.\n" +
                        "4. Microwave at MEDIUM-HIGH 25 to 30 seconds.\n" +
                        "5. The timing will depend on the size of the egg.\n" +
                        "6. To fry 2 eggs, simply microwave 10 to 20 seconds longer to melt the fat and cook the eggs."
            ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        items = [objects (sectionName: "A", sectionObjects: ["Apple Juice", "Asian Broccoli"]),
                 objects (sectionName: "B", sectionObjects: ["Butter Chicken"]),
                 objects (sectionName: "C", sectionObjects: ["Caramel Biscuit", "Chocolate Chip"]),
                 objects (sectionName: "D", sectionObjects: ["Dry Chicken Chilli", "Dry Chilli Paneer", "Dry Minced Meat"]),
                 objects (sectionName: "E", sectionObjects: ["Egg Fried Rice"]),
                 objects (sectionName: "F", sectionObjects: ["Fish Fingers", "Fried Eggs"]),
        ]
    }
    
    func displayItems(currentItem: String){
        if let data = recipeItems.first(where: {$0.key == currentItem}){
                recipeText = data.value
        } else {
                recipeText = "Recipe Unavailable"
        }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return items.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items[section].sectionObjects.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = items[indexPath.section].sectionObjects[indexPath.row]

        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return items[section].sectionName
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        currentSelectedItem = items[indexPath.section].sectionObjects[indexPath.row]
        performSegue(withIdentifier: "recipeDetails", sender: nil)
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController = segue.destination as? ViewController{
            viewController.titleText = currentSelectedItem
            displayItems(currentItem: viewController.titleText)
            viewController.ingredients = recipeText!
        }
    }
    

}

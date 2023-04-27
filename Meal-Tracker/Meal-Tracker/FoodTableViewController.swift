//
//  FoodTableViewController.swift
//  Meal-Tracker
//
//  Created by Thrishalini on 11/01/23.
//

import UIKit

class FoodTableViewController: UITableViewController {

    var meals:[Meal] = [
        Meal(name: "breakfast",
             food:[ Food(name: "Idly", description: "A rice Product"),
                    Food(name: "Sandwitch", description: "A bread with wierd stuff "),
                    Food(name: "Milk", description: "add sugar too")
                  ]
            ),
        Meal(name: "lunch",
             food: [
                Food(name: "Sambar rice", description: "Rice with mixed vegetables"),
                Food(name: "Sambar rice2", description: "Rice with mixed vegetables"),
                Food(name: "Sambar rice3", description: "Rice with mixed vegetables")
             ]
            ),
        Meal(name: "Dinner",
             food: [
                Food(name: "dosa", description: "Pan Fried with rice batter") ,
                Food(name: "masala dosa", description: "Pan Fried with rice batter"),
                Food(name: "podi dosa", description: "Pan Fried with rice batter")
             ]
            ),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return meals.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        
        return meals[section].food.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Food", for: indexPath)
        
        let mm = meals[indexPath.section]
        print(indexPath)
        
        var content = cell.defaultContentConfiguration()
        
        content.text = "\(mm.food[indexPath[1]].name)"
        content.secondaryText = mm.food[indexPath[1]].description
        cell.contentConfiguration = content
        
//         Configure the cell...

        return cell
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return meals[section].name
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

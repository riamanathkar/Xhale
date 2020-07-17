//
//  CustomTableViewController.swift
//  Xhale
//
//  Created by Ria M on 7/16/20.
//  Copyright © 2020 Ria Manathkar. All rights reserved.
//

import UIKit

class CustomTableViewController: UITableViewController {
    
   // var addedMoods : [moodTracker] = []
    var addedMoods = [moodTracker]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

   /*   override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }
*/
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return addedMoods.count
    }
    
    /*
 func createMoods() -> [moodTracker] {
        
        let first = moodTracker()
        first.mood = 1.0
        first.note = "Kah Sponges rock!"
        first.date = "July 15, 2020"
        addedMoods.append(first)
        

        let second = moodTracker()
        second.mood = 5.0
        second.note = "omg this worked!"
        second.date = "September 7, 2005"
        addedMoods.append(second)
      // important is set to false by default

      return [first, second]
    }
    */
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           
          let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
           //let cell = UITableViewCell()
            let entry = addedMoods[indexPath.row]
        
           cell.textLabel?.text = entry.note
            cell.backgroundColor = UIColor.blue
              
               if entry.mood == 1.0
               {
                 cell.imageView?.image = UIImage(named: "smileyfaces")
               }
                  else if entry.mood == 2.0
                   {
                     cell.imageView?.image = UIImage(named: "smileyface2")
                   }
                       else if entry.mood == 3.0
                       {
                         cell.imageView?.image = UIImage(named: "smileyface3")
                       }
                           else if entry.mood == 4.0
                           {
                             cell.imageView?.image = UIImage(named: "smileyface4")
                           }
                               else
                               {
                                 cell.imageView?.image = UIImage(named: "smileyface5")
                               }
                   // CustomTableView.tableView.reloadData()
                   return cell
               }
 
        
       /*  let entry = addedMoods[indexPath.row]

        if entry.mood == 1.0
        {
          cell.moodImage?.image = UIImage(named: "smileyfaces")
        }
        else if entry.mood == 5.0
        {
          cell.moodImage?.image = UIImage(named: "smileyface5")
        }
         
 */
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         if let addVC = segue.destination as? AddMoodViewController {
           addVC.previousVC = self
         }
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

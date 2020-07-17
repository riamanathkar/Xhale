//
//  AddMoodViewController.swift
//  Xhale
//
//  Created by Ria M on 7/16/20.
//  Copyright © 2020 Ria Manathkar. All rights reserved.
//

import UIKit

class AddMoodViewController: UIViewController {

    var previousVC = CustomTableViewController()
    var emotion = 0.0;
    
    @IBOutlet weak var noteText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func smiley1Tapped(_ sender: Any)
    {
        emotion = 1.0
    }
    
    @IBAction func smiley2Tapped(_ sender: Any)
    {
        emotion = 2.0
    }
    
    @IBAction func smiley3Tapped(_ sender: Any)
    {
        emotion = 3.0
    }
    
    @IBAction func smiley4Tapped(_ sender: Any)
    {
        emotion = 4.0
    }
    
    @IBAction func smiley5Tapped(_ sender: Any)
    {
        emotion = 5.0
    }
    
    @IBAction func addTapped(_ sender: Any)
    {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
        //let journalNote = date(entity: date.entity(), insertInto: context)
            //journalNote.mood = emotion
            
        let mood = moodTracker()
        mood.mood = emotion
        
        if let noteText = noteText.text {
        mood.note = noteText
        }
        
        previousVC.addedMoods.append(mood)
        previousVC.tableView.reloadData()
        self.dismiss(animated: true)
        
        //print(previousVC.addedMoods[0].note)
        //print(previousVC.addedMoods[0].mood)
        
    }
    }
}
    
   
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */



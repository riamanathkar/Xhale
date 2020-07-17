//
//  GIFViewController.swift
//  Xhale
//
//  Created by Muryam Hasan on 7/16/20.
//  Copyright © 2020 Ria Manathkar. All rights reserved.
//

import UIKit

class GIFViewController: UIViewController {

    @IBOutlet weak var GIFView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        GIFView.loadGif(name:"breathe-gif")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

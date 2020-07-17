//
//  ResourcesViewController.swift
//  Xhale
//
//  Created by Apple on 7/16/20.
//  Copyright © 2020 Ria Manathkar. All rights reserved.
//

import UIKit

class ResourcesViewController: UIViewController {

    override func viewDidLoad() {
    super.viewDidLoad()
    }
    
    @IBAction func Resource1Tapped(_ sender: UIButton) {
UIApplication.shared.open(URL(string: "https://www.mentalhealth.gov/get-help")! as URL, options: [:] ,completionHandler: nil )
        }


    @IBAction func Resource2Tapped(_ sender: UIButton) {
    UIApplication.shared.open(URL(string: "https://oregonyouthline.org/?gclid=Cj0KCQjw0rr4BRCtARIsAB0_48MpDMHgMPim9pJ12ffSvXXNDVPnP7m-fhQvTQSjjOnv5-_h2eXfhyUaAq2AEALw_wcB")! as URL, options: [:] ,completionHandler: nil )
}
}

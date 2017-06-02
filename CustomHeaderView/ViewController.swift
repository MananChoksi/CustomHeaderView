//
//  ViewController.swift
//  CustomHeaderView
//
//  Created by Manan Choksi on 26/05/17.
//  Copyright © 2017 Manan Choksi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var customView: CustomHeaderView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.customView.lblTitle.text = "Header One";
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}



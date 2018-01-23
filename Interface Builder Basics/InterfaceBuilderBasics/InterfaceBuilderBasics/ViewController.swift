//
//  ViewController.swift
//  InterfaceBuilderBasics
//
//  Created by F14 on 22/01/18.
//  Copyright © 2018 F14. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var myButton: UIButton!
    @IBAction func changeTitle(_ sender: Any) {
        mainLabel.text = "This App rocks!"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


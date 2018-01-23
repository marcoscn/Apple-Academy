//
//  ViewController.swift
//  Light
//
//  Created by F14 on 22/01/18.
//  Copyright © 2018 F14. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var lightOn = true

    @IBAction func buttonPressed(_ sender: Any) {
        lightOn = !lightOn
        updateUI()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateUI(){
        view.backgroundColor = lightOn ? .white : .black
    }


}


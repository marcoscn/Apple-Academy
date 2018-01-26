//
//  ViewController.swift
//  SpacePhoto
//
//  Created by F14 on 25/01/18.
//  Copyright © 2018 F14. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//    Properties
    let photoInfoController = PhotoInfoController()
    
//    IBOutlets
    @IBOutlet weak var titleNavItem: UINavigationItem!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var copyrightLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        descriptionLabel.text = ""
//        navigationItem.title = ""
        
        imageView.image = UIImage(named: "nasa")
        copyrightLabel.text = ""
        
        photoInfoController.fetchPhotoInfo { (photoInfo) in
            if let photoInfo = photoInfo {
                DispatchQueue.main.async{
                    self.title = photoInfo.title
                    self.descriptionLabel.text = photoInfo.description
                    if let copyright = photoInfo.copyright {
                        self.copyrightLabel.text = "Copyright \(copyright)"
                        
                    } else {
                        self.copyrightLabel.isHidden = true
                    }
                }
                
            }
        }
    }

    
}


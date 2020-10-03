//
//  ViewController.swift
//  GestureReconizerapp
//
//  Created by Yurii Sameliuk on 02/02/2020.
//  Copyright © 2020 Yurii Sameliuk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var isPuma = true
    var isPuma2 = true
    var isPuma3 = true

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))

        imageView.addGestureRecognizer(gestureRecognizer)
    }
    @objc func changePic() {
        
        if isPuma {
            imageView.image = UIImage(named: "puma2")
            myLabel.text = "puma2"
            isPuma = false
        }else if isPuma2 {
            imageView.image = UIImage(named: "puma3")
            myLabel.text = "puma3"
            isPuma2 = false
        }
//        }else if isPuma3 {
//            imageView.image = UIImage(named: "puma")
//            myLabel.text = "puma"
//            isPuma3 = true
//        }
            
    }

}


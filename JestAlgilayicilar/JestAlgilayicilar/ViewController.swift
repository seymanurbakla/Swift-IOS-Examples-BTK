//
//  ViewController.swift
//  JestAlgilayicilar
//
//  Created by Şeyma Nur Bakla on 7.09.2024.
//

import UIKit

class ViewController: UIViewController {

    
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    var ankara = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action:  #selector(gorselDegistir))
        imageView.addGestureRecognizer(gestureRecognizer)
    }
    
        @objc func gorselDegistir() {
            
            if ankara == false {
                label.text = "Ankara"
                imageView.image = UIImage(named: "ankara")
                ankara = true
            }else {
                label.text = "Istanbul"
                imageView.image = UIImage(named: "istanbul")
                ankara = false
            }
            
             
        }
}


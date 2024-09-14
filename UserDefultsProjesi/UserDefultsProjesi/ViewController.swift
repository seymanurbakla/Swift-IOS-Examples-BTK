//
//  ViewController.swift
//  UserDefultsProjesi
//
//  Created by Şeyma Nur Bakla on 6.09.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var notTextField: UITextField!
    
    @IBOutlet weak var zamanTextField: UITextField!
    
    @IBOutlet weak var notLabel: UILabel!
    
    @IBOutlet weak var zamanLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let kaydedilenNot = UserDefaults.standard.value(forKey: "not")
        let kaydedilenZaman = UserDefaults.standard.value(forKey: "zaman")
        
        if let gelenNot = kaydedilenNot as? String {
            notLabel.text = "Yapılacak iş : \(gelenNot)"
        }
        if let gelenZaman = kaydedilenZaman as? String{
            zamanLabel.text = "Yapılacak Zaman : \(gelenZaman)"
        }
    }


    @IBAction func kaydetTiklandi(_ sender: Any) {
        
        UserDefaults.standard.setValue(notTextField.text!, forKey: "not")
        UserDefaults.standard.setValue(zamanTextField.text!, forKey: "zaman")

        notLabel.text = "Yapılacak iş : \(notTextField.text!)"
    zamanLabel.text = "Yapılacak Zaman : \(zamanTextField.text!)"
        
    }
    
    @IBAction func silTiklandi(_ sender: Any) {
        
        let kaydedilenNot = UserDefaults.standard.object(forKey: "not")
        let kaydedilenZaman = UserDefaults.standard.object(forKey: "zaman")
        
        if (kaydedilenNot as? String) != nil  {
            UserDefaults.standard.removeObject(forKey: "not")
            notLabel.text = "Yapılacak İş : "
        }
        if (kaydedilenZaman as? String) != nil{
            UserDefaults.standard.removeObject(forKey: "zaman")
            zamanLabel.text = "Yapılacak Zaman : "

        }
    }
}


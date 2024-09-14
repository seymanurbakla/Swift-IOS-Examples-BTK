//
//  ViewController.swift
//  ViewControllerProjesi
//
//  Created by Şeyma Nur Bakla on 4.09.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    var alinanSifre = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        printContent("view did load")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        printContent("view did appear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        printContent("view did disappear")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        printContent("view will appear")
        textField.text = ""
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        printContent("view will disappear")
    }
    

    @IBAction func kontrolEtTiklandi(_ sender: Any) {
        alinanSifre = textField.text!

        if alinanSifre == "atil"{
            performSegue(withIdentifier: "toIkinciVC" , sender: nil)
        }else{
            myLabel.text = "Şifreniz yanlış!"
        }
        }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toIkinciVC"{
            
            let destinationVC = segue.destination as! IkinciViewController
            destinationVC.verilenSifre = alinanSifre
            
        }
    }
    
}


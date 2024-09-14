//
//  IkinciViewController.swift
//  ViewControllerProjesi
//
//  Created by Şeyma Nur Bakla on 4.09.2024.
//

import UIKit

class IkinciViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var bulunanSifreLabel: UILabel!
    
    var verilenSifre = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bulunanSifreLabel.text = verilenSifre
    }
    



}

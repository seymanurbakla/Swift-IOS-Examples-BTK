//
//  ViewController.swift
//  uyariMesajlari
//
//  Created by Şeyma Nur Bakla on 7.09.2024.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var emailText: UITextField!
    
    
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    @IBOutlet weak var password2TextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func signUpTiklandi(_ sender: Any) {
        
        
        func mesaj (title : String , message : String){
            let uyariMesajı = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
            
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in
    //                OK Butonuna tıklandığında ne yapılacağının nereye yönlendireleceğinin kodu
                print("ok butonuna tıklandı")
            }
            uyariMesajı.addAction(okButton)
            
            self.present(uyariMesajı, animated: true, completion: nil)
        }
        
        
        if emailText.text == ""{
            mesaj(title: "Hata mesajı", message: "Email yanlış verildi")
            }
        else if passwordTextField.text == ""  {
            mesaj(title: "Hata mesajı", message: "Password yanlış verildi")
            }
            
        else if passwordTextField.text != password2TextField.text{
            
            mesaj(title: "Hata mesajı", message: "Passwordler aynı değil!")
            }
            
        else {
           mesaj(title: "Başarılı", message: "Kullanıcı oluşturuldu")
        }
        
       
    }
    
}


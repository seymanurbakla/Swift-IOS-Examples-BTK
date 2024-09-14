//
//  ViewController.swift
//  SuperKahramanKitabi
//
//  Created by Şeyma Nur Bakla on 8.09.2024.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    
    @IBOutlet weak var tableView: UITableView!
    var superKahramanGorselleri = [String] ()
    var superKahramanIsimleri = [String] ()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        
        superKahramanIsimleri.append("Batman")
        superKahramanIsimleri.append("Spiderman")
        superKahramanIsimleri.append("Superman")
        superKahramanIsimleri.append("Iron Man")
        superKahramanIsimleri.append("Captain America")
        
//        var superKahramanGorselleri = [UIImage] ()
//        superKahramanGorselleri.append(UIImage(named: "batman")!)
 
        
        superKahramanGorselleri.append("batman")
        superKahramanGorselleri.append("spiderman")
        superKahramanGorselleri.append("superman")
        superKahramanGorselleri.append("ironman")
        superKahramanGorselleri.append("captianamerica")
    }
    
    
    // --> numberOfRowsInSection --> kaç tane row olacak
    // --> cellForRow atIndexPath --> hücrenin içerisinde ne gösterilecek
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return superKahramanIsimleri.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = superKahramanIsimleri[indexPath.row]
        return cell
    }
     
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            superKahramanIsimleri.remove(at: indexPath.row)
            superKahramanGorselleri.remove(at: indexPath.row )
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade )
    }
        

    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
}

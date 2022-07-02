//
//  PlacesViewController.swift
//  FoursquareClone- Parse
//
//  Created by Ömer Faruk Kılıçaslan on 2.07.2022.
//

import UIKit
import Parse

class PlacesViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.isNavigationBarHidden = false
        self.navigationItem.setHidesBackButton(true, animated: true)
        
        navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addButtonClicked))
        
        navigationController?.navigationBar.topItem?.leftBarButtonItem = UIBarButtonItem(title: "Logout", style: .done, target: self, action: #selector(logoutButtonClicked))
    }
    
    @objc func addButtonClicked(){
        
        //Segue
    }
    
    @objc func logoutButtonClicked() {
        
        PFUser.logOutInBackground { error in
            
            if error != nil {
                self.makeAlert(title: "Error", message: error?.localizedDescription ?? "Error")
            }
            else{
                self.performSegue(withIdentifier: "toLoginVC", sender: nil)
            }
        }
    }
    

    

}


extension PlacesViewController {
    
    func makeAlert(title:String, message:String) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
}

//
//  ViewController.swift
//  FoursquareClone- Parse
//
//  Created by Ömer Faruk Kılıçaslan on 2.07.2022.
//

import UIKit
import Parse

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
    /*    let parseObject = PFObject(className: "Fruits")
        parseObject["name"] = "Banana"
        parseObject["calories"] = 150
        
        parseObject.saveInBackground { success, error in
            
            if error != nil {
                print(error?.localizedDescription)
            }
            else{
                print("uploaded")
            }
        }
        
     */
        
        //Fetching data from Parse
        
        let query = PFQuery(className: "Fruits")
        //query.whereKey("name", equalTo: "Apple")
        query.whereKey("calories", greaterThan: 120)
        query.findObjectsInBackground { objects, error in
            
            if error != nil {
                print(error?.localizedDescription)
            }
            else{
                print(objects)
            }
        }
        
    }


}


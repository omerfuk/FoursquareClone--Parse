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
       
        let parseObject = PFObject(className: "Fruits")
        parseObject["name"] = "Apple"
        parseObject["calories"] = 100
        
        parseObject.saveInBackground { success, error in
            
            if error != nil {
                print(error?.localizedDescription)
            }
            else{
                print("uploaded")
            }
        }
        
        
    }


}


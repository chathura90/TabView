//
//  FirstViewController.swift
//  TabExample
//
//  Created by hSenid on 6/4/18.
//  Copyright © 2018 hSenid. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        userDefaults()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func userDefaults(){
        let defaults = UserDefaults.standard
        
        // Storing Values of different times
        defaults.set(15, forKey: "weight")
        defaults.set(true, forKey: "isActive")
        defaults.set(25.8, forKey: "distance")
        defaults.set("Sergey", forKey: "firstName")
        defaults.set(NSDate(), forKey: "currentDate")
        
        let friendsNames = ["Bill", "John"]
        defaults.set(friendsNames, forKey: "friendsNames")
        
        // Reading from NSUserDefaults.
        let weightValue = defaults.integer(forKey: "weight")
        print("weight value = \(weightValue)")
        
        let isUserActive = defaults.bool(forKey: "isActive")
        print("isUserActive value = \(isUserActive)")
        
        let distanceValue = defaults.double(forKey: "distance")
        print("distance value = \(distanceValue)")
        
        let firstNameValue = defaults.object(forKey: "firstName") as! String
        print("First Name value = \(firstNameValue)")
        
        let currentDateValue = defaults.object(forKey: "currentDate") as! NSDate
        print("Current date value = \(currentDateValue)")
    
        
        let friendsNamesArray = defaults.object(forKey: "friendsNames") as? [String] ?? [String]()
        print("Friends names Array count \(friendsNamesArray.count)")
        print("First element in array \(friendsNamesArray[0])")
    }

}


//
//  ViewController.swift
//  Ikea
//
//  Created by Instructor on 1/10/19.
//  Copyright © 2019 Instructor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var dictionary: [String: String] = [
        "chair":   "Sitzplatz",
        "table":   "Shpredderplatz",
        "carseat": "Autotuchus",
        "carpet":  "Floorshpredder",
        "mattress": "Lumpenbagg"
    ];
    
    @IBOutlet weak var label: UILabel!;

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("dictionary.count = \(dictionary.count)");
        
        //optional binding
        
        if let previousValue: String = dictionary.updateValue("Vurksurface", forKey: "table") {
            print("The old value was \(previousValue).");
        } else {
            print("There was no previous value.");
        }
        
        let i: Int? = 10;
        
        if i == nil {
            print("i is nil, can't apply an exclamation point.");
        } else {
            let j: Int = i!;
            print("j = \(j)");
        }
        
        print(i == nil ? "i is nil, can't apply an exclamation point." : "j = \(i!)");
        
        //Three ways to safely unwrap i
        
        if i != nil {
            let j: Int = i!;  //forced unwrapping with !
            print("j = \(j)");
        }
        
        if let newvar: Int = i {   //optional binding
            print("newvar = \(newvar)");
            print("newvar = \(newvar)");
        }
        
        if let i: Int = i {   //optional binding
            print("i = \(i)");
            print("i = \(i)");
        }
    }

    @IBAction func returnKeyPressed(_ sender: UITextField) {
        
        
       
        
        if let text: String = sender.text {
            if let ikeaWord: String = dictionary[text] {
                label.text = "The Ikea word for \"\(text)\" is \"\(ikeaWord)\".";
            }
        }
        
        //Could crash the app.  Bad, bad, sad.
        //let ikeaWord: String = dictionary[sender.text!]!
        //label.text = "The Ikea word for \"\(sender.text!)\" is \"\(ikeaWord)\".";
    }
    
}


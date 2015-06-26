//
//  ViewController.swift
//  Tarea0501
//
//  Created by modelo on 23/06/15.
//  Copyright (c) 2015 modelo. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet var nSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "push") {
            var state:String
            if (nSwitch.on) {
                state = "On"
            } else {
                state = "Off"
            }
            
            (segue.destinationViewController as! SecondViewController).data = state
        }
    }


}


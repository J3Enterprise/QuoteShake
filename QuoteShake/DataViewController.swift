//
//  DataViewController.swift
//  My Dogs Diet
//
//  Created by James Johnson on 12/23/15.
//  Copyright © 2015 James Johnson. All rights reserved.
//

import UIKit

class DataViewController: UIViewController {

    let dogNames = ["Bosco", "Max", "Haha", "Pluto", "Brutus", "Douglas"]
    
    @IBAction func dogButtonPressed(sender: AnyObject) {
        let randomValue = Int(arc4random_uniform(UInt32(dogNames.count)))
        
        self.dogName.text = self.dogNames[randomValue]
    }
    
    override func canBecomeFirstResponder() -> Bool {
        return true
    }
    
    // Detect shake and change the text to random dog name
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent?) {
        let randomValue = Int(arc4random_uniform(UInt32(dogNames.count)))
        self.dogName.text = self.dogNames[randomValue]
    }
    
    @IBOutlet weak var dataLabel: UILabel!
    var dataObject: String = ""

    @IBOutlet weak var dogName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.dataLabel!.text = dataObject
        self.dogName!.text = "Shake"
        
    }

    

}


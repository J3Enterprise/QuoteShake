//
//  ViewController.swift
//  QuoteShake
//
//  Created by James Johnson on 12/24/15.
//  Copyright © 2015 James Johnson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let Quotes = ["We look forward to the time when the Power of Love will replace the Love of Power. Then will our world know the blessings of peace.,WILLIAM EWART GLADSTONE",
                "It is better to remain silent at the risk of being thought a fool, than to talk and remove all doubt of it.,MAURICE SWITZER",
                "For success, attitude is equally as important as ability.,ANONYMOUS",
                "Either you run the day, or the day runs you.,JIM ROHN",
                "When I die, I want to go peacefully like my grandfather did–in his sleep. Not yelling and screaming like the passengers in his car.,BOB MONKHOUSE",
                "When I was 5 years old, my mother always told me that happiness was the key to life. When I went to school, they asked me what I wanted to be when I grew up. I wrote down “happy. They told me I didn’t understand the assignment, and I told them they didn’t understand life.,ANONYMOUS",
                "Never doubt that a small group of thoughtful, committed citizens can change the world. Indeed, it’s the only thing that ever has.,MARGARET MEAD",
                "People are illogical, unreasonable, and self-centered. Love them anyway. A photograph of Kent M. Keith.,KENT M. KEITH",
                "Absence diminishes mediocre passions and increases great ones, as the wind blows out candles and fans fire., FRANÇOIS (VI) (DUC DE LA ROCHEFOUCAULD)",
                "The next time you’re faced with something that’s unexpected, unwanted and uncertain, consider that it just may be a gift.,STACEY KRAMER"]
    
    
    @IBAction func quoteButtonPressed(sender: AnyObject) {
        let randomValue = Int(arc4random_uniform(UInt32(Quotes.count)))
        self.Quote.text = self.Quotes[randomValue]
    }
    
 //   override func canBecomeFirstResponder() -> Bool {
 //       return true
 //   }
    
    // Detect shake and change the text to random dog name
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent?) {
        let randomValue = Int(arc4random_uniform(UInt32(Quotes.count)))
        self.Quote.text = self.Quotes[randomValue]
    }
    
    @IBOutlet weak var Quote: UILabel!
    
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
        self.Quote!.text = "Quote Shake"
        
    }

}


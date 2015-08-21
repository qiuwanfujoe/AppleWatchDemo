//
//  InterfaceController.swift
//  AppleWatchDemo WatchKit Extension
//
//  Created by gideon on 8/17/15.
//  Copyright (c) 2015 gideon. All rights reserved.
//

import WatchKit
import Foundation

class InterfaceController: WKInterfaceController {
    
    @IBOutlet var guessSlider: WKInterfaceSlider!         // the slider
    @IBOutlet var guessLabel: WKInterfaceLabel!     // the label displaying the guess number
    @IBOutlet var resultLabel: WKInterfaceLabel!    // Wrong/Correct Label
    var guessNumber = 3
    
    @IBAction func updateGuess(value: Float) {
        guessNumber = Int(value * 5)
        guessLabel.setText("你猜的是: \(guessNumber)")
    }
    @IBAction func startGuess()
    {
        var randomNumber = Int(arc4random_uniform(6))
        
        if(guessNumber == randomNumber) {
            resultLabel.setText("你赢了！！！")
            self.pushControllerWithName("BonusInterfaceController", context: nil);
        } else {
            resultLabel.setText("错误： \(randomNumber)")
        }
    }
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    override func handleUserActivity(userInfo: [NSObject : AnyObject]?) {
        
        resultLabel.setText("快来猜数字领奖！！！!!!!!")
    }
}

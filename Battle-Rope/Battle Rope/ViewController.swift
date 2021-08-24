//
//  ViewController.swift
//  Battle Rope
//
//  Created by Brandon Brown on 7/25/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //Variables for Timer function
    var myTimer = Timer()
    var secondsToCount = 155
    
    //Variables created from the main.storyboard file (connectivity)
    @IBOutlet var backGround: UIView!
    @IBOutlet weak var timerDisplayed: UILabel!

    //Function that start the count from 100s whenever the UIButton is clicked
    @IBAction func onCLick(_ sender: UIButton) {
        myTimer.invalidate()
        myTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        let pressedButton = sender
        pressedButton.isHidden = true
    }
    
    /* Function that changes the color of the background to represent a change in specific action.
      Red = Stop (Idle)
      Green = Action (Active)
      Yellow =  Rest (Pause) */
    
    @objc func updateTimer() {
        secondsToCount -= 1
        if (secondsToCount > -1){
            timerDisplayed.text = String(secondsToCount)
        }
        
        
        if (secondsToCount > 140 ) { //155-141 (startup)
            self.view.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        }
        else if (secondsToCount > 120){ // 140 - 121 (20s Alt)
            self.view.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        }
        else if (secondsToCount > 105){ //120 - 106 (15s Rest)
            self.view.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        }
        else if (secondsToCount > 85){ //105 - 86 (20s Both Simutaneously)
            self.view.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        }
        else if (secondsToCount > 70){ //85 - 71 (15s Rest)
            self.view.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        }
        else if (secondsToCount > 50){ //70 -- 51 (20s Hip Toss)
            self.view.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        }
        else if (secondsToCount > 35){ //50 -- 36 (15s Rest)
            self.view.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        }
        else if (secondsToCount > 15){ // 35 - 16 (20s Side)
            self.view.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        }
        else if (secondsToCount > 0){ // 15 - 1 (15s Rest)
            self.view.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        }
        else {
            self.view.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1) //End of Timed Variation (SLAM!)
        }
    }
}


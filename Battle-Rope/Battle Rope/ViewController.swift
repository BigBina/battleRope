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
        // Do any additional setup after loading the view.
    }
    
    var myTimer = Timer()
    var secondsToCount = 100


    @IBAction func onCLick(_ sender: UIButton) {
        myTimer.invalidate()
        myTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer() {
        secondsToCount -= 1
        if (secondsToCount > -1){
            timerDisplayed.text = String(secondsToCount)
        }
        if (secondsToCount > 85) { //100-86
            self.view.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        } else if (secondsToCount > 59){ //85-60
            self.view.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        } else if (secondsToCount > 48){ //59 - 49
            self.view.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        } else if (secondsToCount > 22){
            self.view.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1) // 48 - 23
        } else if (secondsToCount > 11){ //22 - 12
            self.view.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        } else { //85-60
            self.view.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        }
        
 
    }
    @IBOutlet var backGround: UIView!
    
    @IBOutlet weak var timerDisplayed: UILabel!
    
    /*@objc func didButtonClick(_ sender: UIButton){
        //turn the screen yellow for 15 seconds
        //turn the screen green for 25 seconds
        //turn the screen yellow for 15 seconds
        //turn the screen green for 25 seconds
        // turn the screen red for 5 and finish the app
        
    }*/
    



}


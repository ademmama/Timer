//
//  ViewController.swift
//  TimerTutorial
//
//  Created by Adem MAMA on 6.12.2017.
//  Copyright © 2017 Adem MAMA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    var timer = Timer()
    var count = 10
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "Remaining Time \(count)"
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.timeFunc), userInfo: nil, repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func timeFunc() {
        count -= 1
        label.text = "Remaining Time \(count)"
        if count == 0 {
            timer.invalidate()
            label.text = "Time's Off"
        }
    }
    
}


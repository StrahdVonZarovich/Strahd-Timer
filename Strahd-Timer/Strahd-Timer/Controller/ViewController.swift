//
//  ViewController.swift
//  Strahd-Timer
//
//  Created by Fatih Canbekli on 14.06.2019.
//  Copyright © 2019 Fatih Canbekli. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    

    @IBOutlet weak var timeLabel: NSTextField!
    
    
    
    override func viewDidLoad() {
        
        timeLabel.stringValue = "00:05"
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func StartButton(_ sender: NSButton) {
        var time = Time()
        var isDone: Bool = true
        var timeString: String = "00:05"
        let queue = DispatchQueue(label: "work-queue")
        for index in 1...1800{
            queue.async {
                sleep(1)
                timeString = time.updateTime(time: timeString)
                DispatchQueue.main.async {
                    print(timeString)
                    if(timeString == "00:00"){
                        self.timeLabel.stringValue = "00:00"
                    }
                    self.timeLabel.stringValue = timeString
                }
            }
        }
        
        
    }
    
    
    
    
}


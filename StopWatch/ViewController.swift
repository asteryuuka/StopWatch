//
//  ViewController.swift
//  StopWatch
//
//  Created by 兼子友花 on 10/7/19.
//  Copyright © 2019 兼子友花. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count: Double = 0.00
    var timer: Timer!

    @IBOutlet var timerLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func start() {
        
        //0.01秒ごとにこのファイル内のupdate関数をよび、それを毎0.01秒ずつ繰り返す
        timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(UIMenuController.update), userInfo: nil, repeats: true)
        
    }

    
    @IBAction func stop() {
        timer.invalidate()
    }
    
    func update () {
        count = count + 0.01
        //フォーマット指定子
        timerLabel.text = String(format: "%.2f", count)
    }

}


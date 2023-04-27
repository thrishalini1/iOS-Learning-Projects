//
//  ViewController.swift
//  App-LifeCycle-Thrish
//
//  Created by Thrishalini on 09/01/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    
    @IBOutlet weak var didFinishLaunchingLabel: UILabel!
    
    @IBOutlet weak var willResignActiveLabel: UILabel!
    
    
    @IBOutlet weak var didEnterBackgroundLabel: UILabel!
    
    
    @IBOutlet weak var didBecomeActiveLabel: UILabel!
    
    @IBOutlet weak var willTerminateLabel: UILabel!
    
    @IBOutlet weak var willEnterForegroundLabel: UILabel!
    
    
    var didFinishLaunchingCount:Int = 0
    var willResignActiveCount:Int=0
    var didEnterBackgroundCount:Int = 0
    var willEnterForegroundCount:Int=0
    var didBecomeActiveCount:Int =  0
    var willTerminateCount:Int = 0
    
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func updateView(){
        didFinishLaunchingLabel.text=" didFinishLaunchingLabel\(didFinishLaunchingCount)"
        willResignActiveLabel.text=" willResignActiveCount\(willResignActiveCount)"
        didEnterBackgroundLabel.text=" didEnterBackground \(didEnterBackgroundCount)"
        willEnterForegroundLabel.text =
        "willEnterForegroundLabel\(willEnterForegroundCount)"
        didBecomeActiveLabel.text="didBecomeActiveLabel\(didBecomeActiveCount)"
        
        willTerminateLabel.text = "willTerminateLabel\(willTerminateCount)"
        
    }
}


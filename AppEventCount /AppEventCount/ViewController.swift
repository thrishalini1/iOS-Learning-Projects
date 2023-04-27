//
//  ViewController.swift
//  AppEventCount
//
//  Created by Thrishalini on 10/01/23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var willConnectCount = 0
    var sceneDidBecomeActiveCount = 0
    var sceneWillResignActiveCount = 0
    var sceneWillEnterForegroundCount = 0
    var sceneDidEnterBackgroundCount = 0
    var sceneDidDisconnectCount = 0
    
    var appDelegate = (UIApplication.shared.delegate as! AppDelegate)

    
    
    @IBOutlet var didBecomeActiveLabel: UILabel!
    @IBOutlet var didFinishLaunchingLabel: UILabel!
    
    @IBOutlet var configurationForConnecting: UILabel!
    
    
    @IBOutlet var willConnectTo: UILabel!
    
    @IBOutlet var sceneWillResignActive: UILabel!
    
    @IBOutlet var sceneWillEnterForeground: UILabel!
    
    @IBOutlet var sceneDidEnterBackground: UILabel!
    
    
    func updateView() {
        didFinishLaunchingLabel.text = "The App has launched \(appDelegate.lauchCount) time(s)"
        configurationForConnecting.text = "The App has Configuration for connecting  \(appDelegate.configurationForConnectingCount) time(s)"
        didBecomeActiveLabel.text =  "The app became active  \(sceneDidBecomeActiveCount) times"
        willConnectTo.text = "The app will connect count is \(willConnectCount)"
        sceneWillResignActive.text = " The scene will regin active count is \(sceneWillResignActiveCount)"
        sceneWillEnterForeground.text = "The scene will enter foreground count is \(sceneWillEnterForegroundCount)"
        sceneDidEnterBackground.text = "The scene did enter background count is \(sceneDidEnterBackgroundCount)"
        

        
    }
}


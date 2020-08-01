//
//  ViewController.swift
//  UserDefaultsSwitch
//
//  Created by Cristian Rojas on 15/06/2020.
//  Copyright © 2020 Cristian Rojas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var themeSwitch: UISwitch!
    @IBOutlet weak var preferencesTitleLabel: UILabel!
    @IBOutlet weak var midinightThemeLabel: UILabel!
    
    let darkColor = UIColor(red: 40/255, green: 40/255, blue: 40/255, alpha: 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let weWantMidnight = UserDefaults.standard.bool(forKey: "midnightThemeOn")
        if weWantMidnight {
            switchToMidnight()
            themeSwitch.isOn = true
        }
    }
    func switchToMidnight() {
        UserDefaults.standard.set(true, forKey: "midnightThemeOn")
        self.view.backgroundColor = darkColor
        preferencesTitleLabel.textColor = .white
        midinightThemeLabel.textColor = .white
    }
    func switchToDaylight() {
        UserDefaults.standard.set(false, forKey: "midnightThemeOn")
        self.view.backgroundColor = .white
        preferencesTitleLabel.textColor = darkColor
        midinightThemeLabel.textColor = darkColor
        
    }

    @IBAction func midnightSwitch(_ sender: Any) {
        if themeSwitch.isOn {
            switchToMidnight()
        } else {
            switchToDaylight()
        }
    }
    
}


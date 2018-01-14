//
//  ViewController.swift
//  Calculator
//
//  Created by Angus Miller on 14/1/18.
//  Copyright © 2018 Angus Miller. All rights reserved.
//

import UIKit

enum modes {
    case not_set
    case addition
    case subtraction
}

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    var labelString:String = "0"
    var currentMode:modes = .not_set
    var savedNum:Int = 0
    var lastButtonWasMode:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func didPressPlus(_ sender: Any) {
        changeMode(newMode: .addition)
    }
    
    
    @IBAction func didPressMinus(_ sender: Any) {
        changeMode(newMode: .subtraction)
    }
    @IBAction func didPressTimes(_ sender: Any) {
    }
    @IBAction func didPressEquals(_ sender: Any) {
        guard let labelInt:Int = Int(labelString) else {
            return
        }
        if (currentMode == .not_set || lastButtonWasMode){
            return
        }
        if (currentMode == .addition){
            savedNum += labelInt
        } else if (currentMode == .subtraction){
            savedNum -= labelInt
        }
        currentMode = .not_set
        labelString = "\(savedNum)"
        updateText()
        lastButtonWasMode = true
    }
    @IBAction func didPressClear(_ sender: Any) {
        labelString = "0"
        currentMode = .not_set
        savedNum = 0
        lastButtonWasMode = false
        label.text = "0"
    }
    
    @IBAction func didPressNumber(_ sender: UIButton) {
        let stringValue:String? = sender.titleLabel?.text
        
        if (lastButtonWasMode){
            lastButtonWasMode = false
            labelString = "0"
        }
        
        labelString = labelString.appending(stringValue!)
        updateText()
    }
    
    
    func updateText(){
        guard let labelInt:Int = Int(labelString) else {
            return
        }
        if (currentMode == .not_set){
            savedNum = labelInt
        }
        
        label.text = "\(labelInt)"
    }

    func changeMode(newMode:modes){
        if (savedNum == 0){
            return
        }
                
        currentMode = newMode
        lastButtonWasMode = true
    }

}


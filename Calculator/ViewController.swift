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
    var lableString:String = "0"
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
    @IBAction func didPressPlus(_ sender: AnyObject) {
    }
    
    
    @IBAction func didPressMinus(_ sender: AnyObject) {
    }
    @IBAction func didPressTimes(_ sender: AnyObject) {
    }
    @IBAction func didPressEquals(_ sender: AnyObject) {
    }
    @IBAction func didPressClear(_ sender: AnyObject) {
    }
    
    @IBAction func didPressNumber(_ sender: UIButton) {
    }
    
    
    func updateText(){
        
    }

    func changeMode(newMode:modes){
        
    }

}


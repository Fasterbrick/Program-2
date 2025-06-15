//
//  ViewController.swift
//  Program 2
//
//  Created by swift on 15/06/2025.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var xTextField: NSTextField!
    @IBOutlet weak var yTextField: NSTextField!
    @IBOutlet weak var resultLabel: NSTextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    @IBAction func compareButtonClicked(_ sender: Any) {
        guard let x = Double(xTextField.stringValue), let y = Double(yTextField.stringValue) else {
            resultLabel.stringValue = "Please enter valid numbers."
            return
        }
        if x > y {
            resultLabel.stringValue = "x is greater than y."
        } else if x < y {
            resultLabel.stringValue = "x is less than y."
        } else {
            resultLabel.stringValue = "x is equal to y."
        }
    }

}

//
//  ViewController.swift
//  NSTextField
//
//  Created by Harry Ng on 4/8/2016.
//  Copyright © 2016 STAY REAL LIMITED. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var textField: NSTextField! {
        didSet {
            textField.delegate = self
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

extension ViewController: NSTextFieldDelegate {

    func control(control: NSControl, textView: NSTextView, doCommandBySelector commandSelector: Selector) -> Bool {

        if commandSelector == #selector(insertNewline(_:)) {
            return false
        }
        return true
    }

    override func controlTextDidBeginEditing(obj: NSNotification) {
        print("did begin")
    }

    override func controlTextDidChange(obj: NSNotification) {
        print("did change")
    }

    override func controlTextDidEndEditing(obj: NSNotification) {
        print("did end")
    }

}

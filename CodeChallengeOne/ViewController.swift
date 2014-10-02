//
//  ViewController.swift
//  CodeChallengeOne
//
//  Created by Peter Hitchcock on 10/2/14.
//  Copyright (c) 2014 Peter Hitchcock. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //IBOutlets
    @IBOutlet weak var valueOneTextField: UITextField!
    @IBOutlet weak var valueTwoTextField: UITextField!

    //IBActions
    @IBAction func calculateButtonPressed(sender: AnyObject) {

        var getValueOne:Int! = valueOneTextField.text.toInt()
        var getValueTwo:Int! = valueTwoTextField.text.toInt()
        var total = getValueOne * getValueTwo
        self.navigationItem.title = "\(total)"
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


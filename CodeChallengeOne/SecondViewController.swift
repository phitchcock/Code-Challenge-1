//
//  SecondViewController.swift
//  CodeChallengeOne
//
//  Created by Peter Hitchcock on 10/2/14.
//  Copyright (c) 2014 Peter Hitchcock. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    //IBOutlets
    @IBOutlet weak var webView: UIWebView!

    //Variables
    var answer:String!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = answer
        setHomePage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func loadURL(urlString: NSString) {
        let url = NSURL(string: urlString)
        let urlRequest = NSURLRequest(URL: url)
        self.webView.loadRequest(urlRequest)
    }

    func setHomePage() {
        self.loadURL("http://www.mobilemakers.co")
    }
   
}

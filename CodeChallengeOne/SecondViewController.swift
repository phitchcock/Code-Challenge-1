//
//  SecondViewController.swift
//  CodeChallengeOne
//
//  Created by Peter Hitchcock on 10/2/14.
//  Copyright (c) 2014 Peter Hitchcock. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UIWebViewDelegate {

    //IBOutlets
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var webViewActivity: UIActivityIndicatorView!

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

    func webViewDidStartLoad(webView: UIWebView) {
        UIApplication.sharedApplication().networkActivityIndicatorVisible = true
        self.webViewActivity.startAnimating()
    }

    func webViewDidFinishLoad(webView: UIWebView) {
        UIApplication.sharedApplication().networkActivityIndicatorVisible = false
        self.webViewActivity.stopAnimating()
        self.webViewActivity.hidesWhenStopped = true
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

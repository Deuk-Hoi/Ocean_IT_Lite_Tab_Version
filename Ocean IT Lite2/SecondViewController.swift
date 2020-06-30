//
//  SecondViewController.swift
//  Ocean IT Lite2
//
//  Created by hoseoict on 2020/06/30.
//  Copyright © 2020 Ocean IT. All rights reserved.
//

import UIKit
import WebKit

class SecondViewController: UIViewController, WKUIDelegate, WKNavigationDelegate {
    
     var oceanLink = "http://ec2-15-164-231-37.ap-northeast-2.compute.amazonaws.com:8080/"
    
    @IBOutlet weak var FirstWebView: WKWebView!
    @IBOutlet weak var FirstIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        FirstWebView.navigationDelegate = self
        self.request(url: oceanLink + "deviceMain.do")
    }
    
    func request(url: String)
    {
        self.FirstWebView.load(URLRequest(url: URL(string: url)!))
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    func webView(_ FirstWebView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        FirstIndicator.color = UIColor.red
        FirstIndicator.hidesWhenStopped = true
        FirstIndicator.startAnimating()
    }
    func webView(_ FirstWebView: WKWebView, didFinish navigation: WKNavigation!) {
           FirstIndicator.stopAnimating()
    }


}


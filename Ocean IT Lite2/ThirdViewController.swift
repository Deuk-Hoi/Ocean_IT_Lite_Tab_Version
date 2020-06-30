//
//  ThirdViewController.swift
//  Ocean IT Lite2
//
//  Created by hoseoict on 2020/06/30.
//  Copyright © 2020 Ocean IT. All rights reserved.
//

import UIKit
import WebKit

class ThirdViewController: UIViewController, WKUIDelegate, WKNavigationDelegate  {

    var oceanLink = "http://ec2-15-164-231-37.ap-northeast-2.compute.amazonaws.com:8080/"
    
    @IBOutlet weak var SecondWebview: WKWebView!
    @IBOutlet weak var SecondIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        SecondWebview.navigationDelegate = self
        self.request(url: oceanLink + "deviceManagement.do")

    }
    
    func request(url: String)
    {
        self.SecondWebview.load(URLRequest(url: URL(string: url)!))
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    func webView(_ SecondWebview: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        SecondIndicator.color = UIColor.red
        SecondIndicator.hidesWhenStopped = true
        SecondIndicator.startAnimating()
    }
    func webView(_ SecondWebview: WKWebView, didFinish navigation: WKNavigation!) {
           SecondIndicator.stopAnimating()
    }
}

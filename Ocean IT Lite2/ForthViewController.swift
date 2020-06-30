//
//  ForthViewController.swift
//  Ocean IT Lite2
//
//  Created by hoseoict on 2020/06/30.
//  Copyright © 2020 Ocean IT. All rights reserved.
//

import UIKit
import WebKit

class ForthViewController: UIViewController, WKUIDelegate, WKNavigationDelegate  {

    var oceanLink = "http://ec2-15-164-231-37.ap-northeast-2.compute.amazonaws.com:8080/"
    
    @IBOutlet weak var ThirdWebView: WKWebView!
    @IBOutlet weak var ThirdIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ThirdWebView.navigationDelegate = self
        self.request(url: oceanLink + "deviceLog.do")
        
    }
    
    func request(url: String)
    {
        self.ThirdWebView.load(URLRequest(url: URL(string: url)!))
    }
    
    override func didReceiveMemoryWarning() {
           super.didReceiveMemoryWarning()
       }
       func webView(_ ThirdWebView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
           ThirdIndicator.color = UIColor.red
           ThirdIndicator.hidesWhenStopped = true
           ThirdIndicator.startAnimating()
       }
       func webView(_ ThirdWebView: WKWebView, didFinish navigation: WKNavigation!) {
              ThirdIndicator.stopAnimating()
       }
}

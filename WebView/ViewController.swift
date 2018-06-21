//
//  ViewController.swift
//  WebView
//
//  Created by Xiaolong Zhang on 6/20/18.
//  Copyright © 2018 Xiaolong Zhang. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {

  var webView: WKWebView!
  
  override func loadView() {
    webView = WKWebView()
    webView.navigationDelegate = self
    view = webView
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    let url = URL(string: "https://lnkd.in/gqbJenY")!
    webView.load(URLRequest(url: url))
    webView.allowsBackForwardNavigationGestures = true
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

}


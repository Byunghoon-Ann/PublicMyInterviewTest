//
//  DetailExplainViewController.swift
//  PublicMyInterviewTest
//
//  Created by ByungHoon Ann on 2020/03/12.
//  Copyright © 2020 ByungHoon Ann. All rights reserved.
//
/*
 WebKit.Networking: 113: Could not find specified service <-에러를
 https://medium.com/彼得潘的-swift-ios-app-開發教室/webkit-issue-processassertion-processassertionwasinvalidated-6e3d9ecac0a5
 사이트를 참고하여 해결하였음
*/
import Foundation
import UIKit
import WebKit

class DetailExplainViewController: UIViewController {
    
    
    var wkWebView: WKWebView = {
        let wkWebView = WKWebView()
        wkWebView.translatesAutoresizingMaskIntoConstraints = false
        return wkWebView
    }()
    
    func setWKWebView() {
        view.addSubview(wkWebView)
        wkWebView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        wkWebView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        wkWebView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        wkWebView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
    }
    
    func loadUrl() {
        setWKWebView()
        guard let url = URL(string: "https://jinshine.github.io/2018/05/22/Swift/5.OOP%20in%20Swift/") else { return }
        let requeset = URLRequest(url: url)
        wkWebView.load(requeset)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        loadUrl()
    }
}

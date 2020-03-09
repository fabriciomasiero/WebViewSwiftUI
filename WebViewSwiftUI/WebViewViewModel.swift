//
//  WebViewViewModel.swift
//  WebViewSwiftUI
//
//  Created by Fabrício Masiero on 09/03/20.
//  Copyright © 2020 Fabrício Masiero. All rights reserved.
//

import Foundation
import WebKit

public class WebViewViewModel: NSObject {
    
    private let stringUrl: String
    public let webView: WKWebView
    
    init(stringUrl: String) {
        self.stringUrl = stringUrl
        self.webView = WKWebView()
    }
    public func request() {
        guard let url = URL(string: stringUrl) else {
            return
        }
        let urlRequest = URLRequest(url: url)
        webView.load(urlRequest)
        if webView.navigationDelegate == nil {
            webView.navigationDelegate = self
        }
    }
}
extension WebViewViewModel: WKNavigationDelegate {
    public func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        
    }
    public func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        
    }
}

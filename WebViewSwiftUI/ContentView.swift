//
//  ContentView.swift
//  WebViewSwiftUI
//
//  Created by Fabrício Masiero on 09/03/20.
//  Copyright © 2020 Fabrício Masiero. All rights reserved.
//

import SwiftUI
import WebKit

struct ContentView: View {
    var body: some View {
        WebView(viewModel: WebViewViewModel(stringUrl: "https://tinyurl.com/w498z2l")).background(Color.red)
    }
}
struct WebView: UIViewRepresentable {
    
    let viewModel: WebViewViewModel
    
    func makeUIView(context: Context) -> WKWebView {
        return viewModel.webView
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        viewModel.request()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

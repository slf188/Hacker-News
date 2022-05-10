//
//  WebView.swift
//  Hacker News
//
//  Created by Felipe Vallejo on 9/5/22.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    let urlString: String?
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}

//
//  WebDisplayViewController.swift
//  M10Bar
//
//  Created by Mesplay, Harrison W. on 4/27/26.
//


import UIKit
import WebKit

class WebDisplayViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    var websiteURL: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        guard let websiteURL = websiteURL,
              let url = URL(string: websiteURL) else {
            print("Invalid URL")
            return
        }

        let request = URLRequest(url: url)
        webView.load(request)
    }
}

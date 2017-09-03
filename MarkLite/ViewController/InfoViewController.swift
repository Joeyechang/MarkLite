//
//  InfoViewController.swift
//  MarkLite
//
//  Created by zhubch on 2017/9/3.
//  Copyright © 2017年 zhubch. All rights reserved.
//

import UIKit

enum InfoType:String {
    case monthly
    case yearly
    case terms
}

class InfoViewController: UIViewController {

    var type:InfoType!
    
    let webView = UIWebView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let url = Bundle.main.url(forResource: type.rawValue, withExtension: "html") else {
            return
        }
        let request = URLRequest(url: url)
        webView.loadRequest(request)
        view.addSubview(webView)
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        webView.frame = view.bounds
    }
}

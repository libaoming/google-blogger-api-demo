//
//  DetailViewController.swift
//  Blog Reader
//
//  Created by 李宝明 on 16/8/26.
//  Copyright © 2016年 李宝明. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var webview: UIWebView!
   

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem {
            
            self.title = detail.value(forKey: "title") as! String
            if let blogWebview = self.webview {
                blogWebview.loadHTMLString((detailItem?.value(forKey: "content") as? String)!, baseURL: nil)
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: Event? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }


}


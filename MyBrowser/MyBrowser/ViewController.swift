//
//  ViewController.swift
//  MyBrowser
//
//  Created by Feifei Zhang on 27/12/15.
//  Copyright © 2015 Feifei Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var webView: UIWebView!
    
    @IBOutlet var SearchBar: UISearchBar!

    @IBOutlet var ActInd: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = NSURL(string: "http://www.google.com")
        
        let request = NSURLRequest(URL: url!)
        
        webView.loadRequest(request)
        
        SearchBar.text = "http://"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func searchBarSearchButtonClicked(searchbar: UISearchBar)
    {
        
        searchbar.resignFirstResponder()
        
        let text = SearchBar.text
        let url = NSURL(string:text!)
        let request = NSURLRequest(URL:url!)
        
        webView.loadRequest(request)
        
        
    }
    
    func webViewDidStartLoad(_: UIWebView)
    {
        ActInd.startAnimating()
    }
    
    func webViewDidFinishLoad(_: UIWebView)
    {
        ActInd.stopAnimating()
    }
    
}


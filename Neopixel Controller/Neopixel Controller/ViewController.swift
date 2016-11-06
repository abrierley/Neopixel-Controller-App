//
//  ViewController.swift
//  Neopixel Controller
//
//  Created by Andrew Brierley on 6/11/16.
//  Copyright © 2016 Andrew Brierley. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func Rainbow(_ sender: UIButton) {
        
        let string1 = "http://"
        let string2 = "10.0.1.147"
        let string3 = "/rainbow?fade=3000"
        
       
        let myUrl = URL(string: string1 + string2 + string3);
        
        var request = URLRequest(url:myUrl!)
        
        request.httpMethod = "POST"// Compose a query string
        
        let postString = "";
        
        request.httpBody = postString.data(using: String.Encoding.utf8);
        
        let task = URLSession.shared.dataTask(with: request)
            { (data: Data?, response: URLResponse?, error: Error?) in
            
            if error != nil
            {
            print("error=\(error)")
                return
            }
            
            // You can print out response object
            print("response = \(response)")
        
        }
        task.resume()
    
    }
    @IBAction func AllOff(_ sender: UIButton) {
    
        let string1 = "http://"
        let string2 = "10.0.1.147"
        let string3 = "/ledsoff?fade=500"
        
        
        let myUrl = URL(string: string1 + string2 + string3);
        
        var request = URLRequest(url:myUrl!)
        
        request.httpMethod = "POST"// Compose a query string
        
        let postString = "";
        
        request.httpBody = postString.data(using: String.Encoding.utf8);
        
        let task = URLSession.shared.dataTask(with: request)
        { (data: Data?, response: URLResponse?, error: Error?) in
            
            if error != nil
            {
                print("error=\(error)")
                return
            }
            
            // You can print out response object
            print("response = \(response)")
            
        }
        task.resume()
    
    
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
        
    }
}

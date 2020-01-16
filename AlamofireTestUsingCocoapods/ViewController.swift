//
//  ViewController.swift
//  AlamofireTestUsingCocoapods
//
//  Created by Md. Mehedi Hasan Akash on 1/16/20.
//  Copyright © 2020 Md. Mehedi Hasan Akash. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    @IBOutlet weak var showTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func getButtonTapped(_ sender: Any) {
        // Alamofire 4
        Alamofire.request("https://api.darksky.net/forecast/2a3099a6c73317d36830f4c9b80eba93/37.8267,-122.4233").response { response in // method defaults to `.get`
            debugPrint(response)
            
            /*do{
                //here dataResponse received from a network request
                let jsonResponse = try JSONSerialization.jsonObject(with:
                    dataResponse, options: [])
                print(jsonResponse) //Response result
            } catch let parsingError {
                print("Error", parsingError)
            }*/
            
            self.showTextView.text = String(bytes: response.data!, encoding: .utf8)
        }
    }
    
}


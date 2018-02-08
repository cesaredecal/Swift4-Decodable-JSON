//
//  ViewController.swift
//  Swift4-Decodable
//
//  Created by Cesare de Cal on 2/8/18.
//  Copyright © 2018 Cesare Gianfilippo Astianatte de Cal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        makeRequest()
    }
    
    internal func makeRequest() {
        let jsonUrlString = "https://api.letsbuildthatapp.com/jsondecodable/courses_missing_fields"
        if let url = URL(string: jsonUrlString) {
            URLSession.shared.dataTask(with: url) { (data, response, error) in
                if let error = error {
                    print(error.localizedDescription)
                }
                if let data = data {
                    do {
                        //let websiteDescription = try JSONDecoder().decode(WebsiteDescription.self, from: data)
                        //print(websiteDescription.name, websiteDescription.description)
                        let courses = try JSONDecoder().decode([Course].self, from: data)
                        print(courses)
                    } catch let jsonError {
                        print(jsonError.localizedDescription)
                    }
                }
                }.resume()
        }
    }
}


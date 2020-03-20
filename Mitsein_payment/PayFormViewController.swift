//
//  PayFormViewController.swift
//  Mitsein
//
//  Created by Matias Mingo Seguel on 3/5/20.
//  Copyright © 2020 AppCoda. All rights reserved.
//

import UIKit

class PayFormViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func HomeView(_ sender: Any) {
        self.performSegue(withIdentifier:"HomeViewSegue", sender: self)
    }
    
    static private func getUrl(from api: String) -> URL? {
        let BASE_URL = ""
        let apiUrl = api.contains("http") ? api : BASE_URL + api
        return URL(string: apiUrl)
    }
    
    static private func getHeaders() -> [String: String]? {
        return [
            "Content-Type": "application/json",
            "access_token":  "your access token or api key"
        ]
    }
    
    //API GET request
    /*
    open func dataTask(with request: URLRequest,
    completionHandler: @escaping (Data?, URLResponse?, Error?) -> Swift.Void
    ) -> URLSessionDataTask
    
    let todoEndpoint: String = "https://jsonplaceholder.typicode.com/todos/1"
    guard let url = URL(string: todoEndpoint) else {print("Error: cannot create URL")
      return
    }
    let urlRequest = URLRequest(url: url)
    let session = URLSession.shared
    let task = session.dataTask(with: urlRequest) { data, response, error in
      // do stuff with response, data & error here
    }
    task.resume()
    */
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

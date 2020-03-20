//
//  HomeViewController.swift
//  Mitsein
//
//  Created by Matias Mingo Seguel on 3/5/20.
//  Copyright © 2020 AppCoda. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func Account(_ sender: UIButton) {
        self.performSegue(withIdentifier:"ProfileViewSegue", sender: self)
    }
    
    @IBAction func Pay(_ sender: Any) {
        self.performSegue(withIdentifier:"PayViewSegue", sender: self)
    }

    @IBAction func Charge(_ sender: Any) {
        self.performSegue(withIdentifier:"ChargeViewSegue", sender: self)
    }

    @IBAction func Transfer(_ sender: Any) {
        self.performSegue(withIdentifier:"TransferViewSegue", sender: self)
    }
    
}

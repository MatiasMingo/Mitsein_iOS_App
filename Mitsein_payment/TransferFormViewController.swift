//
//  TransferFormViewController.swift
//  Mitsein
//
//  Created by Matias Mingo Seguel on 3/5/20.
//  Copyright © 2020 AppCoda. All rights reserved.
//

import UIKit

class TransferFormViewController: UIViewController {
    
    @IBOutlet weak var Amount: UITextField!
    
    @IBOutlet weak var Sender_address: UITextField!
    
    @IBOutlet weak var Recipient_address: UITextField!
    
    @IBOutlet weak var Private_key: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func HomeView(_ sender: Any) {
        self.performSegue(withIdentifier:"HomeViewSegue", sender: self)
    }
    
    @IBAction func confirmtransfer(_ sender: Any) {
        let transaction = Transaction(amount: Amount.text ?? "<no_amount>", address_sender: Sender_address.text ?? "<no_address>", address_recipient: Recipient_address.text ?? "<no_address>", private_key: Private_key.text ?? "<no_key>")
        let postRequest = APIRequest(endpoint:"messages")
        postRequest.save(transaction, completion: { result in
            switch result{
            case .success(let transaction):
                print("The following transaction has been sent: $\(transaction.amount) MTS to \(transaction.address_sender)")
            case .failure(let error):
                print("Transaction unsuccesful \(error)")
            }
        })
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

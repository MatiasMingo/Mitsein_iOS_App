//
//  Transaction.swift
//  Mitsein_payment
//
//  Created by Matias Mingo Seguel on 3/14/20.
//  Copyright © 2020 Matias Mingo Seguel. All rights reserved.
//

import Foundation

final class Transaction: Codable {
    var id:Int?
    var amount:String
    var address_sender:String
    var address_recipient:String
    var private_key:String
    
    init(amount: String, address_sender: String, address_recipient: String, private_key: String) {
        self.amount = amount
        self.address_sender = address_sender
        self.address_recipient = address_recipient
        self.private_key = private_key
    }
}

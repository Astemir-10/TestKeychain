//
//  ViewController.swift
//  TestKeychain
//
//  Created by Astemir Shibzuhov on 1/28/21.
//

import UIKit
import KeychainAccess

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let keychain = Keychain(service: "product.astema")
        if let value = try? keychain.get("Astema") {
            print("GET DATA IN KEYCHAN \n-----------")
            print("In keychain found value -- \(value) -- by key # \("Astema") #")
        } else {
            print("SAVING DATA IN KEYCHAN \n-----------")
            keychain["Astema"] = "KEYKEY"
        }
    }


}


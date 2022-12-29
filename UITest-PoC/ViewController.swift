//
//  ViewController.swift
//  UITest-PoC
//
//  Created by user on 26/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        nameTextField.accessibilityIdentifier = "nameTextField"
//        password.accessibilityIdentifier = "passwordTextField"
        print(sumNumbers(a: 1, b: 2))
    }

    func sumNumbers(a: Int, b: Int) -> Int {
        a + b
    }

}


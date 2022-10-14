//
//  ViewController.swift
//  NumberSystemConverter
//
//  Created by Данил on 14.10.2022.
//

import UIKit

class ViewController: UIViewController {

    let converter = ConverterService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(converter.convert(from: "12534", fromSystem: 6, toSystem: 12))
    }


}


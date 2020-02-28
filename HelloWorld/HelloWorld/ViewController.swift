//
//  ViewController.swift
//  HelloWorld
//
//  Created by Ireton, John on 2/21/20.
//  Copyright © 2020 Ireton, John (US - Seattle). All rights reserved.
//

import UIKit
import GoogleSignIn
import FBSDKCoreKit
import FBSDKLoginKit

class ViewController: UIViewController {
    
    let colors: [UIColor] = [.red, .orange, .yellow, .green, .blue, .purple]
    var index = 0

    @IBOutlet weak var helloButton: UIButton!
    @IBAction func didTapButton(_ sender: Any) {
        index += 1
        if index == colors.count { index = 0 }
        helloButton.setTitleColor(colors[index], for: .normal)
        #if DEBUG
        NSLog("Index is now %i", index)
        #endif
    }
    
    override func viewDidLoad() {
        helloButton.setTitle("HELLO WORLD!", for: .normal)
    }

}


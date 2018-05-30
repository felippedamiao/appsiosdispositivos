//
//  BaseViewController.swift
//  Mensagens
//
//  Created by Macintosh on 28/05/18.
//  Copyright © 2018 Eric Brito. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    @IBOutlet weak var lbMessage: UILabel!
    var message: Message!

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func changeColor(_ sender: UIButton){
        
    }

}

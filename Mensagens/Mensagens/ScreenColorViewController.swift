//
//  ScreenColorViewController.swift
//  Mensagens
//
//  Created by Macintosh on 28/05/18.
//  Copyright © 2018 Macintosh. All rights reserved.
//

import UIKit

class ScreenColorViewController: BaseViewController {
    
    @IBOutlet weak var viBorder: UIView!
    @IBOutlet weak var swWhiteBorder: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! ResultViewController
        vc.message = message
    }
    
    @IBAction func changeBorder(_ sender: UISwitch) {
        viBorder.backgroundColor = sender.isOn ? .white : .clear
    }
}


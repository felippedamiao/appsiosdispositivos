//
//  ViewController.swift
//  Mensagens
//
//  Created by Macintosh on 28/05/18.
//  Copyright © 2018 Macintosh. All rights reserved.
//

import UIKit

class MessageViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        message = Message()
    }
     
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! MessageColorViewController
        vc.message = message
    }
    
}

extension MessageViewController : UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        message.text = textField.text
        lbMessage.text = textField.text
        textField.resignFirstResponder()
        
        return true
    }
}

extension MessageViewController: ColorPickerProtocol {
    func applyColor(color: UIColor) {
        lbMessage.textColor = color
        message.textColor = color
    }
}


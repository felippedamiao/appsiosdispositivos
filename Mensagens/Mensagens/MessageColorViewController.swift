//
//  MessageColorViewController.swift
//  Mensagens
//
//  Created by Macintosh on 28/05/18.
//  Copyright © 2018 Macintosh. All rights reserved.
//

import UIKit

class MessageColorViewController: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbMessage.text = message.text
        lbMessage.textColor = message.textColor
        lbMessage.backgroundColor = message.backgroundColor
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! ScreenColorViewController
        vc.message = message
    }
    
}
extension MessageColorViewController: ColorPickerProtocol {
    func applyColor(color: UIColor) {
        lbMessage.backgroundColor = color
        message.backgroundColor = color
    }
}

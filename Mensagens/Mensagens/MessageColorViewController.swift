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
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! ScreenColorViewController
        vc.message = message
    }
    
    override func changeColor(_ sender: UIButton) {
        let colorPicker = storyboard?.instantiateViewController(withIdentifier: "ColorPickerViewController") as! ColorPickerViewController
        colorPicker.modalPresentationStyle = .overCurrentContext
        colorPicker.reference = self
        present(colorPicker, animated: true, completion: nil)
    }
    
}

extension MessageViewController: ColorPickerProtocol{
    func applyColor(color: UIColor) {
        lbMessage.textColor = colora
        message.textColor = color
    }
}

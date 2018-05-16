//
//  QuizViewController.swift
//  SwiftQuiz
//
//  Created by Macintosh on 15/05/18.
//  Copyright © 2018 Macintosh. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {

    @IBOutlet weak var viTimer: UILabel!
    
    @IBOutlet weak var lbQuestion: UILabel!
    
    @IBOutlet var btAnswers: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func selectAnswear(_ sender: UIButton) {
    }
    
}

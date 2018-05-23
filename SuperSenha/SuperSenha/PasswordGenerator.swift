//
//  PasswordGenerate.swift
//  SuperSenha
//
//  Created by Macintosh on 22/05/18.
//  Copyright © 2018 Macintosh. All rights reserved.
//

import Foundation

class PasswordGenerator {

    var numberOfCharacters: Int
    var useLetters: Bool
    var useNumbers: Bool
    var useCapitalLetters: Bool
    var useSpecialCharacters: Bool

    var passwords: [String] = []
    
    private let letters = "abcdefghijklmnopqrstuvwyxz"
    private let specialCharacters = "!@#$ˆ&*()_-=+`˜|][{}<>;:'/., "
    private let numbers = "0123456789"
    
    init(numberOfCharacters: Int, useLetters: Bool, useNumbers: Bool, useCapitalLetters: Bool, useSpecialCharacters: Bool) {
        
        var numChars = min(numberOfCharacters, 16)
        numChars = max(numChars, 1)
        
        self.useSpecialCharacters = useSpecialCharacters
        self.useLetters = useLetters
        self.useNumbers = useNumbers
        self.useCapitalLetters = useCapitalLetters
        self.numberOfCharacters = numChars
        
    }

    func generate(total: Int) -> [String] {
        passwords.removeAll()
        var universe: String = ""
        
        if useLetters   {
            universe += letters
        }
        
        if useNumbers {
            universe += numbers
        }
        
        if  useSpecialCharacters {
            universe += specialCharacters
        }
        
        if  useCapitalLetters {
            universe += letters.uppercased()
        }
        
        let universeArray = Array(universe)
        while passwords.count < total {
            var password = ""
            for _ in 1...numberOfCharacters{
                let index = Int(arc4random_uniform(UInt32(universe.count)))
                password += String(universeArray[index])
            }
            passwords.append(password)
        }
        
        return passwords
    }
}

//
//  BankManagerConsoleApp - main.swift
//  Created by yagom. 
//  Copyright © yagom academy. All rights reserved.
// 

import Foundation

func getInput() {
    var isContinue = true
    
    while isContinue {
        var bankManager = BankManager()
        InputStateMessage.printInputProcessText(state: .initialization)
        guard let userInput: String = readLine() else {
            InputStateMessage.printInputProcessText(state: .error)
            return
        }
        switch userInput {
        case "1":
            bankManager.openBank()
        case "2":
            isContinue = false
            return
        default:
            InputStateMessage.printInputProcessText(state: .inputError)
        }
    }
}

getInput()

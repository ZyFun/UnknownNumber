//
//  main.swift
//  UnknownNumber
//
//  Created by Дмитрий Данилин on 26.04.2020.
//  Copyright © 2020 Дмитрий Данилин. All rights reserved.
//

import Foundation

//Храним загаданное число в виде строки, чтобы избежать тройного преобразования:
//1) результат функции readLine() из String? в String
//2) полученный String в UInt8? с помощью UInt8(_:)
//3) полученный UInt8? в UInt8 для сравнения с randomNumber
//Генерация случайного числа
let randomNumber = String(arc4random_uniform(50))
//Введенное пользователем число
var userNumber: String = ""
//Ответ пользователя для входа и продолжения игры
var userAnswer: String = ""

print(message["startGame"]!)
repeat {
    print(message["go"]!)
    let myAnswer = readLine()
    userAnswer = myAnswer ?? ""
    if userAnswer == "" {
        startGame()
    }
} while userAnswer == ""

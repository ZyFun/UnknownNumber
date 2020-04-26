//
//  main.swift
//  UnknownNumber
//
//  Created by Дмитрий Данилин on 26.04.2020.
//  Copyright © 2020 Дмитрий Данилин. All rights reserved.
//

import Foundation

//Словарь сообщений
let message = [
    "start":"Введите вариант числа от 1 до 50 и нажмите Enter.",
    "more":"Ваш вариант больше загаданного числа.",
    "less":"Ваш вариант меньше загаданного числа.",
    "win":"Вы угадали число!"]

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
//Цикл проверки
func startGame () {
    repeat {
        print(message["start"]!)
        //Получение числа
        let myNumber = readLine()
        userNumber = myNumber ?? ""
        if userNumber < randomNumber {
            print(message["less"]!)
        } else if userNumber > randomNumber {
            print(message["more"]!)
        }
    } while userNumber != randomNumber
    
    print(message["win"]!)
}

print("Добро пожаловать в игру 'Угадай число'")
repeat {
    print("Для того чтобы продолжить нажмите Enter. Для выхода введите Y")
    let myAnswer = readLine()
    userAnswer = myAnswer ?? ""
    if userAnswer == "" {
        startGame()
    }
} while userAnswer == ""

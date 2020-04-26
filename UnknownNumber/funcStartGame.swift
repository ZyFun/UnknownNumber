//
//  funcStartGame.swift
//  UnknownNumber
//
//  Created by Дмитрий Данилин on 26.04.2020.
//  Copyright © 2020 Дмитрий Данилин. All rights reserved.
//

func startGame () {
    //Цикл проверки
    repeat {
        print(message["userVersion"]!)
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

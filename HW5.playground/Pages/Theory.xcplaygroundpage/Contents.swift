//: [Previous](@previous)

import Foundation

 //1. Простая функция, ничего не принимает и ничего не возвращает

func sayHello() {
    print("Hello")
}

sayHello()

//2. Функция, принимающая один параметр

func oneParam(param: Int) {
    var param = param
    param += 1
}

oneParam(param: 13)

//3. Функция, не принимающая параметров, но возвращающая значение

func returnValue() -> Int {
    return 10
}
let a = returnValue()

//4. Функция, принимающая несколько параметров и возвращающая значение

func giveMeYour(name: String, andSecondName: String) -> String {
    return "Your full name is \(name) \(andSecondName)"
}

giveMeYour(name: "Denis", andSecondName: "Abramov")


//5. Функция, принимающая массив в качестве параметра и использующая вложенную функцию для работы

func calcMoneyIn(array: [Int]) -> Int {
    
    var sum = 0
    func sayMoney() {
        print(sum)
    }
    
    for item in array {
        sum += item
    }
    
    sayMoney()
    return sum
}

calcMoneyIn(array: [1, 2, 3, 4, 5])

//6. Функция, которая принимает переменное число параметров

func findSum(ofIntegers integers: Int...) -> Int {
    var sum = 0
    
    for item in integers {
        sum += item
    }
    return sum
}

findSum(ofIntegers: 2, 4, 6)

//7. Имена параметров функции

func sum(_: Int) -> Int {
    return 10
}

//8. Функция в качестве возвращаемого значения

func whatToDo(missed: Bool) -> (Int) -> Int {
    
    func missCountUp(input: Int) -> Int { return input + 1 }
    func missCountDown(input: Int) -> Int { return input - 1 }
    
    return missed ? missCountUp : missCountDown
}

var missedCount = 0
missedCount = whatToDo(missed: true)(missedCount)
missedCount = whatToDo(missed: false)(missedCount)
missedCount = whatToDo(missed: true)(5)


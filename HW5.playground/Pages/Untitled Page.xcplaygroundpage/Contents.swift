import UIKit
//:  [Сылка на тесты](https://docs.google.com/forms/d/e/1FAIpQLSfbAnnd3DvDVyB4181e33ZfDP4A_yezovpuvo49fqZ6MPsUSw/viewform)

//: ## Home Work 5
/*:
 ### Задание 1
 Создайте словарь, который содержит результаты игр спортивной команды в чемпионате (например по хоккею). Ключом словаря должно быть название команды соперника, а в качестве значения должен быть массив с результатами игр с этим соперником. Необходимо вывести на консоль результаты игр. Выглядить это должно примерно следующим образом:
 
 - Игра с Салават Юлаев - 3:6
 
 - Игра с Салават Юлаев - 5:5
 
 - Игра с Авангард - 2:1
 
 - Игра с Авангард - 2:3
 
 - Игра с АкБарс - 3:3
 
 - Игра с АкБарс - 1:2
 */

let resultsGames: [String: [String]] = ["Салават Юлаев": ["3:6", "5:5"], "Авангард": ["2:1", "2:3"], "АкБарс": ["3:3", "1:2"]]

for (nameComand, values) in resultsGames {
    for result in values {
               print ("Игра с \(nameComand) - \(result)")
    }
}

/*:
 ### Задание 2
Создайте функцию которая принимает в качестве аргументов день, месяц и год вашего рождения и делает расчет полных прожитых вами дней, месяцев и лет с момента вашего рождения. При вызове функции на консоль должно выходить то же самое сообщение, что и в предыдущих заданиях
 */
func calculatesQuantityFromDateOfBirth(days: Int, months: Int, years: Int) {
    
//создаем необходимые свойства (день, месяц, год) на момент выполнения задания 6.11.2020, скобки в коде указаны для лучшего понимания структуры вычисления:
let dayOfToday = 18,
    monthOfToday = 11,
    yearOfToday = 2020

//создаем необходимые свойства:
let secondsInDays = 60 * 60 * 24, //секунд в сутках
    daysInMonths = 30,  //суток в месяце
    monthInYears = 12  //месяцев в году

//вычисляем количество дней до дня рождения от РХ:
let days = years * monthInYears *  daysInMonths + months * daysInMonths + days

//вычисляем количество дней до текущей даты от РХ:
let daysToToday = yearOfToday * monthInYears *  daysInMonths +  monthOfToday * daysInMonths + dayOfToday

//прошло дней:
let daysPassed = daysToToday - days

//месяцев прошло:
let monthsPassed = daysPassed / daysInMonths

//лет прошло:
let yearsPassed = monthsPassed / monthInYears

//секунд прошло:
let secondsPassed = daysPassed * secondsInDays
    
print("\(yearsPassed) years, or \(monthsPassed) months, or \(daysPassed) days, or \(secondsPassed) seconds have passed since my birth")
}

calculatesQuantityFromDateOfBirth(days: 28, months: 10, years: 1994)

/*:
 ### Задание 3
 3.1 Создайте функцию, которая считает общую сумму денег, хранящихся в кошельке. В кошельке имеются купюры различного достоинства от 50 до 5000 рублей
 */
func countsAmountOfMoney(purse: [Int?]) {

   var amountOfMoneyInWallet = 0
    for index in purse {
        amountOfMoneyInWallet += index ?? 0
    }
    print(amountOfMoneyInWallet)
}

//: 3.2 Заполните массив различными купюрами и подсчитайте общую сумму
countsAmountOfMoney(purse: [-50, nil, 0, 50, 100, 200, 500, 1000, 2000, 5000, 5000])

/*:
 ### Задание 4
 4.1 Создайте функцию, которая определяет является ли число четным или нет. В случае, если число является четным, функция должна возвращать `true`. Иначе - `false`. Подумайте над названием функции, оно должно быть ёмким и в то же время не очень длинным
 */
func determinesTheParity(number: Int) -> Bool {

    return number % 2 == 0
}

determinesTheParity(number: 9)

  
/*:
4.2 Создайте функцию, которая определяет делится ли число на *3* без остатка. Функция так же должна возвращать булево значение. Так же подумайте над названием функции
*/
func definesDivisionBy3WithoutRemainder(number: Int) -> Bool {

    return number % 3 == 0
}

definesDivisionBy3WithoutRemainder(number: 4)


/*:
 4.3 Создайте функцию, которая создает возрастающий массив чисел в интервале от *x* до *y*. Данный интервал должен определять пользователь при вызове функции. Если хотите усложить задание, то пусть данная функция создает массив случайных чисел в заданном интервале с уникальными значениями
 */
//
//func createsAnArrayOfRandomNumbers(valueStep: Int, valueLastY: Int) {
//
//var valueFirstX = 0
//var numbersSet: [Int] = []
//    while valueFirstX < valueLastY {
//        valueFirstX += valueStep
//        numbersSet.append(valueFirstX)
//        }
//print(numbersSet)
//}
//
//createsAnArrayOfRandomNumbers(valueStep: 5, valueLastY: 100)

/*:
4.4 Создайте массив чисел от *1* до *100*, используя для этого вышесозданную функцию
 */
//func createsAnArrayOfRandomNumbers(valueStep: Int, valueLastY: Int) {
//
//var valueFirstX = 1
//var numbersSet: [Int] = []
//    while valueFirstX <= valueLastY {
//        valueFirstX += valueStep
//        if valueFirstX <= valueLastY {
//        numbersSet.append(valueFirstX)
//        }
//        }
//print(numbersSet)
//}
//
//createsAnArrayOfRandomNumbers(valueStep: 5, valueLastY: 100)


func createsAnArrayOfRandomNumbers(start: Int, finish: Int) -> [Int] {

var numbers: [Int] = []
 for value in start...finish {
 numbers.append(value)
 }
return numbers
}
 
createsAnArrayOfRandomNumbers(start: 0, finish: 100)


/*:
 4.5 Создайте функции для удаления всех четных чисел из массива и чисел, которые делятся на *3*. Для определения четного числа и числа которое делится на *3* используйте ранее созданные функции из задания **4.1** и **4.2**.
 */


func removesNumbersDivisibleBy2And3(array: [Int]) {

    func determinesTheParity(number: Int) -> Int {
        return number % 2
    }

    func definesDivisionBy3WithoutRemainder(number: Int) -> Int {
        return number % 3
    }

    var arrayNew = array

    for number in arrayNew {
        if determinesTheParity(number: number) == 0 || definesDivisionBy3WithoutRemainder(number: number) == 0  {
            
            if let index = arrayNew.firstIndex(of: number) {
                            arrayNew.remove(at: index)
                        }
    }
}
    print(arrayNew)
}

removesNumbersDivisibleBy2And3(array: Array(0...50))

/*:
 4.6* Создайте функцию, параметром которой будет год(например, 1987), эта функция должна возвращать век(число) для этого года.
 
 Например, для года 1900, функция возвратит 20. Для 1899 возвратит 19
 */
func centuryFromYear(year: Int) -> Int {

    return (year + 99) / 100

}

centuryFromYear(year: 2000)
/*:
 5. Создайте функцию, которая генерирует и возвращает массив из N чисел Фибоначчи, N  - это аргумент функции.
 Создайте 2 варианта этой функции:
 а) создайте функцию, используя цикл
 б) создайте рекурсивную функцию
 
 
 Пример:
 Входной параметр:
 let n = 6
 
 Результат: [0, 1, 1, 2, 3, 5]
 */
func generateFib(n: Int) -> [Int] {
    
    guard n >= 0 else {
        return []
    }

    var currentItem = 0
    var nextItem = 1
    var resultArray = [Int]()

    for _ in 0..<n {
        resultArray.append(nextItem)
        let sum = currentItem + nextItem
        currentItem = nextItem
        nextItem = sum
    }
    
    return resultArray
}

generateFib(n: 10)

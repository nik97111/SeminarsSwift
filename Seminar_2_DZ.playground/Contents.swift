
// 1. Написать функцию, которая на вход принимает число: сумма, которую пользователь хочет положить на вклад, следующий аргумент это годовой процент, третий аргумент это срок Функция возвращает сколько денег получит пользователь по итогу.



//  1-й вариант. depositTerm измеряется в годах

func sumCalculation(deposit: Double, annualInterest: Double, depositTerm: Double) -> Double {
    var sum: Double = deposit + ((deposit / annualInterest) * depositTerm)
    switch depositTerm {
    case 0..<1: return sum
    case 1..<2: return sum
    case 2..<3: return sum
    case 3..<5: return sum
    case 5...10: return sum
    default: print("Максимальный срок вклада 10 лет")
    }
    return Double(sum)
}

// Количество знаков после запятой как есть
let totalAmount = sumCalculation(deposit: 20000, annualInterest: 11.4, depositTerm: 2)
print(totalAmount)

// Ограничение до 2-х знаков после запятой
var totalAmounNew = Double(Int(totalAmount * 100.0)) / 100.0
print(totalAmounNew)



//func sumCalculation(deposit: Double, annualInterest: Double, depositTerm: Double) -> Double {
//    var sum: Double = 0
//    switch depositTerm {
//    case 0..<1: return deposit + ((deposit / annualInterest) * depositTerm)
//    case 1..<2: return deposit + ((deposit / annualInterest) * depositTerm)
//    case 2..<3: return deposit + ((deposit / annualInterest) * depositTerm)
//    case 3..<5: return deposit + ((deposit / annualInterest) * depositTerm)
//    case 5...10: return deposit + ((deposit / annualInterest) * depositTerm)
//    default: print("Максимальный срок вклада 10 лет")
//    }
//    return Double(sum)
//}
//
//// Количество знаков после запятой как есть
//let totalAmount = sumCalculation(deposit: 20000, annualInterest: 11.4, depositTerm: 2)
//print(totalAmount)
//
//// Ограничение до 2-х знаков после запятой
//var totalAmounNew = Double(Int(totalAmount * 100.0)) / 100.0
//print(totalAmounNew)



//func sumCalculation(deposit: Double, annualInterest: Double, depositTerm: Double) -> Double {
//    var sum: Double = 0
//    switch depositTerm {
//    case 0..<1: print(sum = deposit + ((deposit / annualInterest) * depositTerm))
//    case 1..<2: print(sum = deposit + ((deposit / annualInterest) * depositTerm))
//    case 2..<3: print(sum = deposit + ((deposit / annualInterest) * depositTerm))
//    case 3..<5: print(sum = deposit + ((deposit / annualInterest) * depositTerm))
//    case 5...10: print(sum = deposit + ((deposit / annualInterest) * depositTerm))
//    default: print("Максимальный срок вклада 10 лет")
//    }
//    return Double(sum)
//}
//
//// Количество знаков после запятой как есть
//let totalAmount = sumCalculation(deposit: 20000, annualInterest: 11.4, depositTerm: 2)
//print(totalAmount)
//
//// Ограничение до 2-х знаков после запятой
//let totalAmountNew = Double(Int(sumCalculation(deposit: 20000, annualInterest: 11.4, depositTerm: 2) * 100.0)) / 100.0
//print(totalAmount)
//
//var totalAmounNew = Double(Int(totalAmount * 100.0)) / 100.0
//print(totalAmounNew)








// 2-й вариант. depositTerm измеряется в годах

//func sumCalculation(deposit: Double, annualInterest: Double, depositTerm: Double) -> Double {
//    var sum: Double = 0
//    
//    if depositTerm <= 1 {
//        sum = deposit + ((deposit / annualInterest) * depositTerm)
//    } else if depositTerm > 1 && depositTerm <= 2 {
//        sum = deposit + ((deposit / annualInterest) * depositTerm)
//    } else if depositTerm > 2 && depositTerm <= 3 {
//        sum = deposit + ((deposit / annualInterest) * depositTerm)
//    } else if depositTerm > 3 && depositTerm <= 5 {
//        sum = deposit + ((deposit / annualInterest) * depositTerm)
//    } else if depositTerm > 5 && depositTerm <= 10 {
//        sum = deposit + ((deposit / annualInterest) * depositTerm)
//    } else {
//        print("Максимальный срок вклада 10 лет")
//    }
//              return sum
//}
//
//let totalAmount = sumCalculation(deposit: 20000, annualInterest: 10, depositTerm: 2)
//print(totalAmount)




// 2. Создать перечисление, которое содержит 3 вида пиццы и создать переменные с каждым видом пиццы.


enum Pizza: String {
    case pizzaNapoletana, pizzaRomana, pizzaSiciliana
}
var napoletana = Pizza.pizzaNapoletana, romana = Pizza.pizzaRomana, siciliana = Pizza.pizzaSiciliana
print(napoletana, romana, siciliana)




// 3. Добавить возможность получения названия пиццы через rawValue


func pizzaName(pizza: Pizza) -> String {
    pizza.rawValue
}

print(pizzaName(pizza: napoletana))
print(pizzaName(pizza: romana))
print(pizzaName(pizza: siciliana))

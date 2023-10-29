
                                                            // Урок 4. Классы и структуры

// 1. Создать перечисление с видами пиццы (хотя бы 4 - 5 кейсов)

enum Pizza {
    case Napoletana
    case Calzone
    case Romana
    case PizzaAlTaglio
    case Siciliana
    case Fritta
    case AlTegamino
    case alMetro
    
}



// 2. Создать структуру пиццы, она должна содержать стоимость, вид пиццы, толстое или тонкое тесто и добавки (например, дополнительно добавить пепперони, помидоры, сыр). Вид пиццы должен быть вложенным типом для структуры пиццы. Подсказка: добавки лучше также сделать перечислением.


struct PizzaStruct {
    var cost: Double
    var thickDough: Bool
    var thinDough: Bool
    
    enum TypePizza {
        case Napoletana
        case Calzone
        case Romana
        case PizzaAlTaglio
        case Siciliana
        case Fritta
        case AlTegamino
        case AlMetro
        
    }
    
    enum Supplements {
        case Pepperoni
        case Tomatoes
        case Cheese
    }
}

// 3. Создать класс пиццерии, добавить массив с возможными пиццами. Переменная с массивом должна быть приватной. Массив задается в инициализаторе.


//class PizzeriaClass {
//    
//    private var possiblePizzas = ["Napoletana", "Calzone", "Romana", "PizzaAlTaglio", "Siciliana", "Fritta", "AlTegamino", "AlMetro"]
//    
//    
//    init(possiblePizzas: [String]) {
//        self.possiblePizzas = possiblePizzas
//    }
//}



// 4. Написать в классе пиццерии функции для добавления новой пиццы и для получения всех доступных пицц.


class PizzeriaClass {
    
    private var possiblePizzas = ["Napoletana", "Calzone", "Romana", "AlTaglio", "Siciliana", "Fritta", "AlTegamino", "AlMetro"]
    
    
    init(possiblePizzas: [String]) {
        self.possiblePizzas = possiblePizzas
    }
    
    func addPizza(namePizza: String) {
        possiblePizzas.append(namePizza)
    }
    
    
    func addPizza1(nameArray: inout[String], item: String) {
        nameArray.append(item)
    }
    
//    func getTypePizzas(nameArray: [String]) -> [String]{
//        var allPizzas = [""]
//        for item in nameArray {
//            allPizzas.append(item)
//        }
//        return allPizzas
//    }
    
    
    func getTypePizzas() {
        for item in possiblePizzas {
            print(item)
        }
    }
    
    
}
    


// 5. Создать экземпляр класса пиццерии и добавить в него несколько пицц.

var newPizzeriaClass = PizzeriaClass(possiblePizzas: [])
newPizzeriaClass.addPizza(namePizza: "Margherita")
newPizzeriaClass.addPizza(namePizza: "Marinara")
newPizzeriaClass.addPizza(namePizza: "Carbonara")



// 6 Вызвать метод getTypePizzas и передать ему массив пицц. Распечатать результат.

print(newPizzeriaClass.getTypePizzas())



// 7. Написать функцию, которая будет решать квадратное уравнение. На вход функция получает коэффициенты a, b, c, d (ax^2 + bx+ c = d), а возвращает корни уравнения.

import Foundation

func rootsEquation(a: Double, b: Double, c: Double, d: Double) -> [Double]? {
    let disc = (b * b) - (4 * (a * (c - d)))
    
    guard disc >= 0 else { return nil }
    
    let sqrtDisc = sqrt(disc)
    
    let x1 = (-b + sqrtDisc) / (2 * a)
    let x2 = (-b - sqrtDisc) / (2 * a)
    
    
    return [x1, x2]
}

print(rootsEquation(a: 4, b: 6, c: 8, d: 0))

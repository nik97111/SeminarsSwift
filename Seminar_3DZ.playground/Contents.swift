
// Урок 3. Коллекции и замыкания
// Есть словарь с видами чая и их стоимостью. Есть очередь людей, которые хотят заказать чай (можно представить её в виде массива видов чая, которые хотят заказать). Необходимо последовательно выводить в консоль сколько заплатит покупатель (необходимо вывести его номер по порядку, чай, который он заказал, и стоимость).

let dictionary = ["black": 140, "gray": 190, "green": 186]

var typeOfTea = ["black", "gray", "green"]

print(typeOfTea[0])
print(dictionary["black"]!)


//func client(typeOfTea: [String]) {
//    for index in typeOfTea {
//        for (key, value) in dictionary {
//            if index == key {
//                print("Покупатель \(index) купил чай \(key) стоимостью \(value) рублей")
//            } else {
//                continue
//            }
//        }
//    }
//}
//client(typeOfTea: ["green"])



//func client(dictionary: [String: Int]) {
//    for (key, value) in dictionary {
//        for index in typeOfTea {
//            if key == index {
//                print("Покупатель \(index) купил чай \(key) стоимостью \(value) рублей")
//            }
//        }
//    }
//}
//client(dictionary: ["black": 140])
//
//
// Без привязки к конкретным словарю и массиву
func client(dictionary: [String: Int], array: [String]) {
    for (key, value) in dictionary {
        for index in array {
            if key == index {
                print("Покупатель \(index) купил чай \(key) стоимостью \(value) рублей")
            }
        }
    }
}
client(dictionary: ["black": 140], array: ["black"])


//Есть массив [-4, 5, 10, nil, 4, nil, 25, 0, nil, 16, 75, -20, -7, 15, 0, nil]. Необходимо создать новый массив, который будет состоять из элементов старого, но не должно быть nil, не должно быть 0 и 4, а также массив должен быть отсортирован по возрастанию.

let array = [-4, 5, 10, nil, 4, nil, 25, 0, nil, 16, 75, -20, -7, 15, 0, nil]
let arrayNew = array
    .compactMap { $0 }
    .filter { $0 != 0 && $0 != 4 }
    .sorted { $0 < $1 }
print(arrayNew)


//Написать функцию, которая на вход принимает целое число, а возвращает массив, который сформирован по следующим правилам: количество элементов соответствует переданному числу, массив начинается с 1, каждый последующий элемент больше предыдущего в 2 раза.

func number(num: Int) -> [Int] {
    var arrayNew = [1]

    for item in 1..<num {
        arrayNew.append(arrayNew[item - 1] * 2)
    }
    return arrayNew
}

let res = number(num: 4)
print(res)

import UIKit

//MARK: - 1. Вывести максимальные значение для Int, Double, Float, UInt8
let minUInt8 = UInt8.min
let maxUInt8 = UInt8.max

let minInt = Int.min
let maxInt = Int.max

let maxFloat = Float.greatestFiniteMagnitude
let minFloat = -Float.greatestFiniteMagnitude


let maxDouble = Double.greatestFiniteMagnitude
let minDouble = -Double.greatestFiniteMagnitude

// Нашел еще такой вариант
public extension Double {
// Max double value.
    static var max: Double {
        return Double(greatestFiniteMagnitude)
    }
// Min double value.
    static var min: Double {
        return Double(-greatestFiniteMagnitude)
    }
}
print (Double.max)
print (Double.min)

//MARK: - 2. Записать число 16 в 2 системе исчисления 0bxxxxx
let value16 = 0b1000
let str = String(value16, radix: 2)
print("0b" + str )
// спросить про это задание
//MARK: - Сделать 2 переменные с  bool значениями, и вывести все возможные их сочетания через if c использованием ( || and &&).  В чем разница между & and &&?

var pswd = true
var key = true
//для более сложного оператора создал 3 переменную
var pin = true

if !(pswd) && key {
print("Welcome!")
} else {
print("accessDenied")
}

if pswd || key {
print("Welcome!")
} else {
print("accessDenied")
}

if pswd && key || pin {
print("Welcome!")
} else {
print("accessDenied")
}
/*
     & и |  нужны для сравнения двоичных значений. (никогда не использовал)
     && и ||  для сравнения фактических значений типа int,double,etc. это логические операторы.
 */

//MARK: -  4. Создать строку литерал на несколько строк. Распечатать эту строку посимвольно. Объединить эту строку с другой, распечатать.
let someStrings : String = """
How are you ?
I'm okay
"""
let characters = Array(someStrings)
print(characters)

//MARK: - 5. Вставить в строку Int значение с использованием интерполяции.
var age = 30
print ("I'm \(age) years old")
//MARK: - 6. Вывести из “We loving burgers so much” слова после слова burgers
let burgers = "We loving burgers so much"
//1
var stringArr = burgers.components(separatedBy: " ")
var twoWords = stringArr [3...4]
print(twoWords)
//2
let stringBurger = twoWords.joined(separator: " ")
print(stringBurger)

//MARK: - 7. Создать массив из 100 повторяющихся единиц, распечатать первые десять используя Ranges [..]
var hundredArray = Array (repeating: 1, count: 100)
//var hundredArray2 = [Int] (repeating: 1, count: 100)
for number in hundredArray [0...9] {
    print(number)
}
//MARK: - 8. Создать массив из 10 повторяющихся  пятерок, распечатать каждую вторую
var tenTimeFive = [5, 5, 5, 5, 5, 5, 5, 5, 5, 5 ]
// ?

var someVar = tenTimeFive[1]
print( "Value of second element is \(someVar)" )
print( "Value of fourth element is \(tenTimeFive[3])" )
print( "Value of six element is \(tenTimeFive[5])" )

//MARK: - 9. Создать массив который нельзя изменять/можно изменять

//MARK: - 10. Создать массив из 10 повторяющихся двоек, вывести элемент и его индекс
let tenTimeTwo = [2, 2, 2, 2, 2, 2, 2, 2, 2, 2]
for (index, value) in tenTimeTwo.enumerated() {
   print("\(index) - \(value)")
}
//MARK: - 11. Заполнить массив случайными числами от 1 до 20, найти на каком месте находится 4 вывести это место и закончить поиск, или вывести “4 не найдена” в противном случае

var randomNumber: [Int] = []
for  _ in 0..<20{
    let rndNumber = Int.random(in: 1...20)
    randomNumber.append(rndNumber)
}
print(randomNumber)
let four = 0

//randomNumber.index(of: 4)   --------
for number in randomNumber.enumerated(){
    number.offset
    number.element
    //    print(number.offset) // порядковый номер в массиве
    //    print(number.element) // значение номер в массиве
    
    if number.element == 4 {
        print(number.offset)
        
    }else if number.offset == 19{
        print("4 не найдена")
    }
}
//MARK: - 12. Создать множество с элементами [1,3,7,8] и [12,3,76,8] найти элементы которые присутствую в обоих множествах, присутствую в первом, но отсутствуют во втором.
let someSet1: Set = [1,3,7,8]
let someSet2: Set = [12,3,76,8]
someSet1.intersection(someSet2)

//MARK: - 13. Создать словарь [“21”: “some element”, “232”: “some element”, “34”: “some element”] вывести все ключи и элементы попарно
var dictionary = ["21": "some element", "232": "some element", "34": "some element"]

for (number, value) in dictionary {
    print("\(number) - \(value)")
}
//MARK: - Сделать функцию, которая принимает в себя строку “abc” и изменяет ее на “abcd”, функция не должна возвращать значение

func addD (letter: inout String){
    letter += "d"
}
var abc = "abc"
addD(letter: &abc)

//inout


//MARK: - Сделать функцию с не именованным  argument label которая считает сумму двух чисел

func someFunction1(_ firstNum: Int, secondNum: Int) -> Int {
    return firstNum + secondNum
}
someFunction1(1, secondNum: 4)

let f: (Int, Int) -> Int = { x, y in x + y }
let f1: (Int, Int) -> Int = { $0 + $1 }

//MARK: - Сделать функцию с default value, которая считает сумму двух чисел и добавляет к ним дефолтное третье
  
func someFunction2(parameterWithoutDefault1: Int, parameterWithoutDefault2: Int, parameterWithDefault: Int = 12) -> Int {
   return parameterWithoutDefault1 + parameterWithoutDefault2 + parameterWithDefault
}
someFunction2(parameterWithoutDefault1: 1, parameterWithoutDefault2: 2)

//MARK: - Сделать функцию которая может принимать неограниченное количество String и затем конкатенировать и выводить в консоль
  
func someStrings(manyString: String...){
    for x in manyString {
        print(" the string is \(x)")
    }
    var result2 = " "
    for y in manyString{
        result2 += y
    }
    print(result2)
}
someStrings(manyString: "what", "the", "duck")


//MARK: - Сделать функцию складывает два числа и принимает дополнительную функцию, которая принимает Int и умножает на 2 аргумент, применить функцию к двум аргументам.

func operate1 (num1: Int, num2: Int, num3: (Int) -> Int ) -> Int{
    num3(num1)
    num3(num2)
var num4 = num3(num1) + num3(num2)
    
 return num4
}
operate1(num1: 2, num2: 4, num3: {$0 * 2})


//MARK: -  Создать функцию которая считает сумму элементов массива который передан,  создать функцию внутри функции, которая принимает на вход число и если оно больше 3 печатает его.

func someArray(array: [Int]){
    var count = 0          // порядковый номер
    var arrayCount = 0    // наш счет
    while count != array.count {
    arrayCount = arrayCount + array[count]
        count += 1
    }
print(arrayCount)
}
someArray(array: [1, 2, 3, 4, 5])




var i = 0
while i < 6 {
    i += 1
print(i)
}



 //Closures
 //MARK: - Создать переменную кложуру, которая принимает  Int и возвращает String.

var reversedNames = { ((s1: Int) -> String).self}
reversedNames()

//MARK: - Создать класс, который хранит массив кложур, которые принимают Int и возвращают String. Что нужно сделать с кложурой, чтобы поместить ее в массив?


//MARK: -  Сделать метод result, который принимает Int и возвращает результат конкатенации строк результатов кложур из массива.


 //Enums
//MARK: - Создать enum Auto c ассоциированными значениями, которые позволяют узнать конкретную модель, которая передана в enum. Через switch case вывести все модели.
enum Auto{
    case honda
    case toyota
    case bmw
    case dodge
}
let currentCar = Auto.honda

switch currentCar {
case .honda: print("Honda")
case .toyota: print("Toyota")
case .bmw: print("BMW")
case .dodge: print("Dodge")
default: //в данном случае не будет никогда вызван
    print("Choose your car")
}

 enum Auto2{
    case honda(withEngine: Int)
     case toyota(doors: Int)
     case bmw(producedIn: String)
     case dodge(cameFrom: String)
 }
    let carsEnum = Auto2.bmw(producedIn: "Germany")

//MARK: -  Создать enum Star: String добавить туда несколько кейсов, вывести rawValue создать enum из rawValue
enum Stars: String{
    case Nembus = "is in the Andromeda constellation "
    case Castor = "is in the Twins constellation "
    case Intercrus = "is in the UMa constellation "
}
var bigStar = Stars.Castor
print(bigStar)
print(bigStar.rawValue)

 // Optionals
//MARK: -  Какие значения может принимать Optional?
// int, str, +nil
//MARK: -  Создать опциональную переменную (скажем Int?) и распаковать ее разными способами (if let, guard, force unwrap)
var age1: Int? = 55
if age1 == nil{
    print("age is nil")
}else{
    age1! + 1
}

var age2: Int? = 18

if let safeAge = age2 {
    safeAge
}else{
    print("age = nil")
}

let age3 = 22
var userAge: Int?   // defaults to nil

var realUserAge = userAge ?? age3


func someFunc3 (a: Int, b: Int){
    guard a == b else {
        return
    }
}
 //MARK: -  Создать force unwrapped variable. Что будет если присвоить туда nil? Что будет если обратиться к этой переменной?

// будет краш если nil


//MARK: -  Через switch вывести все возможные варианты двух Optional switch(oneOptional, secondOptional)
 

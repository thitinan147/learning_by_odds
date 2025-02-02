import UIKit

var greeting = "Hello, playground"

// String = ""
// String? = nil
// String! IBOutlet only

var value: String?
var value2: String = ""

value2 = value ?? "test"

if let value = value {
    value2 = value
}

//guard let value = value else {
//    return
//}

//value2 = value
//

FizzBuzz(number: 20)

//func FizzBuzz(number: Int) -> String {
//    return "FizzBuzz"
//}


// all code compile

// array

// หาร 3 ลงตัว "Fizz" หาร 5 Buzz ทั้งคู่ลงตัว Fizzbuzz
func FizzBuzz(number: Int?) -> String {
    guard let number = number  else {
        return "not number"
    }
    if number % 3 == 0 && number % 5 == 0 {
        return "FizzBuzz"
    }
    if number % 3 == 0  {
        return "Fizz"
    }
    if number % 5 == 0  {
        return "Buzz"
    }
    return "kuy kak noob"
}

FizzBuzz(number: 3)
FizzBuzz(number: 5)
FizzBuzz(number: 15)
FizzBuzz(number: nil)


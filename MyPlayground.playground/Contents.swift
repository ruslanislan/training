import Foundation

var greeting = "Hello, playground"

// First task
func spinWords(in sentence: String) -> String {
    let list: [String] = sentence.split(separator: " ").map(String.init)
    if list.count == 1 {
        if list[0].count > 5 {
            return String(sentence.reversed())
        }
        return sentence
    }
    
    var message: String = ""
    
    for str in list {
        if str.count >= 5 {
            message += str.reversed()
        } else {
            message += str
        }
        message += " "
    }
    
    message.removeLast()
    
    return message
}

//spinWords(in: "This sentence is a sentence")


// Second task
func descendingOrder(of number: Int) -> Int {
    return Int(Array(String(number))
        .map { String($0) }
        .sorted(by: >)
        .joined())!
}

//descendingOrder(of: 4433232)


//Third task
func repeatStr(_ n: Int, _ string: String) -> String {
    var message = ""
    if n <= 0 {
        return message
    }
    for _ in 0..<n {
        message += string
    }
    return message
}

//repeatStr(6, "I")

//Fourth task
func findIt(_ seq: [Int]) -> Int {
    var dict: [Int: Int] = [:]
    for i in seq {
        let t = dict[i] ?? 0
        dict.updateValue(t+1, forKey: i)
    }
    for v in dict {
        if v.value % 2 == 1 {
            return v.key
        }
    }
    return 0
}

//findIt([1,1,1,1,0, 0, 1])

//Fifth task
func findSum(_ n: Int) -> Int {
    var sum = 0;
    for i in 0...n {
        if i % 3 == 0 || i % 5 == 0 {
            sum += i
        }
    }
    return sum
}

//findSum(10)

//Sixth task
func sumOfTwoSmallestIntegersIn(_ array: [Int]) -> Int {
    array.sorted(by: <).prefix(2).reduce(0, +)
}

//sumOfTwoSmallestIntegersIn([19, 5, 42, 2, 77])

//Seventh task
func find_short(_ str: String) -> Int
{
    str.split(separator: " ").map(String.init).compactMap{$0.count}.sorted().first!
}

//find_short("bitcoin take over the world maybe who knows perhaps")

//Eighth task
func squareDigits(_ num: Int) -> Int {
    Int(String(num)
        .compactMap { Int(String($0)) }
        .compactMap { String($0 * $0) }
        .joined()) ?? 0
}

//squareDigits(9119)

// Ninth task
func summation(_ n: Int) -> Int {
   (0...n).reduce(0, +)
}

//summation(8)

//Tenth
func digitize(_ num:Int) -> [Int] {
    String(num).compactMap{ Int(String($0)) }.reversed()
}

digitize(123)

import UIKit
import Foundation

var greeting = "Hello, playground"

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

spinWords(in: "This sentence is a sentence")

func descendingOrder(of number: Int) -> Int {
    return Int(Array(String(number))
        .map { String($0) }
        .sorted(by: >)
        .joined())!
}

descendingOrder(of: 4433232)

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

repeatStr(6, "I")

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

findIt([1,1,1,1,0, 0, 1])

func findSum(_ n: Int) -> Int {
    var sum = 0;
    for i in 0...n {
        if i % 3 == 0 || i % 5 == 0 {
            sum += i
        }
    }
    return sum
}

findSum(10)

func sumOfTwoSmallestIntegersIn(_ array: [Int]) -> Int {
    array.sorted(by: <).prefix(2).reduce(0, +)
}

sumOfTwoSmallestIntegersIn([19, 5, 42, 2, 77])


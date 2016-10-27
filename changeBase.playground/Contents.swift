//:change base

//:algorithm
//: 1.  Divide the "desired" base (in this case base 2) INTO the number you are trying to convert.
//:2.  Write the quotient (the answer) with a remainder like you did in elementary school.
//:3.  Repeat this division process using the whole number from the previous quotient (the number in front of the remainder).
//:4.  Continue repeating this division until the number in front of the remainder is only zero.
//:5.  The answer is the remainders read from the bottom up.


import UIKit

var numberToConvert = 5//base 10
var newBase = 2
var remainder:Int
var quotient = numberToConvert
var answer = [Int]()


repeat {
    remainder = quotient % newBase
    
    answer.append(remainder)
    quotient=quotient/newBase
    
    
} while quotient != 0

let digits=answer.count
print("\(numberToConvert) base 10 = ", terminator:"")

for i in (0..<digits){
    
    switch answer[digits-i-1] {
    case 10:
        print("A", terminator:"")
    case 11:
        print("B", terminator:"")
    case 12:
        print("C", terminator:"")
    case 13:
        print("D", terminator:"")
    case 14:
        print("E", terminator:"")
    case 15:
        print("F", terminator:"")
        
    default:
        print(answer[digits-i-1], terminator:"")
    }
    
//print(answer[digits-i-1], terminator:"")
}

print(" base \(newBase)")

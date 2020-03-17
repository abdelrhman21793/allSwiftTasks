//You are given two numbers a and b. Find and print the greatest common divisor of a and b.
//The greatest common divisor of a and b is the largest number that divides both a and b.
//Example 1
//Input:
//var a = 24
//var b = 18
//Output:
//6
//Example 2
//Input:
//var a = 21
//var b = 13
//Output:
//1
let firstNumber = 13
let secoundNumber = 21
var x = 0
if firstNumber > secoundNumber {
    for i in 1...firstNumber{
        if firstNumber % i == 0 && secoundNumber % i == 0 {
             x = i
        }

    }
    print(x)

} else {
    if   secoundNumber > firstNumber{
    for i in 1...secoundNumber{
        if firstNumber % i == 0 && secoundNumber % i == 0 {
             x = i
        }
    
}
        print(x)

    }}

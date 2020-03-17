//You are given a number. Decompose number into prime factor and write it as an expression(see examples).
//Example 1
//Input:
//var number = 24
//Output:
//24 = 2 * 2 * 2 * 3
//Example 2
//Input:
//var number = 12
//Output:
//12 = 2 * 2 * 3
var number = 12
var start = 2
print("\(number) = ",  terminator: "")
while number % 2 == 0   {
    print(start, terminator: "")
    print(" * ", terminator: "")
    number = number / start
        
    
}
print(number)

let numberOfFibonacciNumbers = 4
var firstNumber = -1 ,secoundNumber = 1, sum = 0;
for i in 0..<numberOfFibonacciNumbers {
sum = firstNumber+secoundNumber;
firstNumber   = secoundNumber;
secoundNumber = sum;
print(sum);
}

//Given an integer N draw a chess board of size N x N. Each line of the chess board should have spaces and number signs(#) alternating. A space represents a white cell and the number sign a black one. The chess board should be bordered using +, - and | like in the examples below.
//Example 1
//Input:
//var N = 1
//Output:
//+-+
//|#|
//+-+
//Example 2
//Input:
//var N = 3
//Output:
//+---+
//|# #|
//| # |
//|# #|
//+---+
//print("Hello", terminator:"")
let N = 8
let blackChess = "#"
let whiteChess = " "
let upperAndLowerBoard = "-"
let leftAndRightBoard  = "|"
let boardCurve = "+"

print(boardCurve,terminator: "")
for _ in 1...N {
    print(upperAndLowerBoard, terminator: "")
}
print(boardCurve)
for i in 1...N{
    print(leftAndRightBoard, terminator: "")
    for x in 1...N{
    if i % 2 == x % 2 {
        print(blackChess, terminator: "")
        
    } else {
        print(whiteChess ,  terminator: "")
        }
    }
    print(leftAndRightBoard)
}

print(boardCurve,terminator: "")
for _ in 1...N {
    print(upperAndLowerBoard, terminator: "")
}
print(boardCurve)

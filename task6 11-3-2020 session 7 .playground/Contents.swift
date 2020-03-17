let howManyFloor = 9
var conterControlForPyramids = 1
var conterControlForSpace = howManyFloor
for _ in 1...howManyFloor{
    let space = String(repeating: " ", count: conterControlForSpace)
    let pyramids = String(repeating: "*", count: conterControlForPyramids)
   
    print(space , pyramids)
    conterControlForPyramids = conterControlForPyramids + 2
    conterControlForSpace = conterControlForSpace - 1
}



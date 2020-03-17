let howManyFloor = 3

var controlOfPyramids = 1 , controlOfSpace = howManyFloor
var controlOfPyramids1 = howManyFloor , controlOfSpace1 = 2

for _ in 1...howManyFloor {
let pyramids = String(repeating: "*", count: controlOfPyramids)
let space = String(repeating: " ", count: controlOfSpace)
print(space , pyramids)
controlOfPyramids = controlOfPyramids + 2
controlOfSpace = controlOfSpace - 1
}
for _ in 1..<howManyFloor {
let pyramids = String(repeating: "*", count: controlOfPyramids1)
let space = String(repeating: " ", count: controlOfSpace1)
print(space , pyramids)
controlOfPyramids1 = controlOfPyramids1 - 2
controlOfSpace1 = controlOfSpace1 + 1
}


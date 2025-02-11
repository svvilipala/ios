import UIKit

var numbers:[Int] = [2,3,4]
print(numbers)

var emptyArray = [Int]()
print(emptyArray)

var programmingLanguage = ["Swift","Java","Python"]
print(programmingLanguage[0])

var programmingLanguage2 = ["Swift","Java","Python"]
programmingLanguage2[0] = "Java Script"
print(programmingLanguage2[0])

var names:[String] = ["Oliver", "Elijah", "James"]
print(names)
names.append("Masthan")
print(names)
names.insert("Bejamin", at: 2)
print(names)
print(names.count)
names.remove(at: 1)
print(names)
print(names.count)
names.sort()
print(names)
names.reverse()
print(names)
names.swapAt(1,2)
print(names)
names.swapAt(0,2)
print(names)


var oddNumbers = [1,3,5,7]
var evenNumbers = [2,4,6,8]
oddNumbers.append(contentsOf: evenNumbers)
print(oddNumbers)

var captials = ["Arkansas":"LittleRock", "Georgia":"Atlanra"]
print(captials)
print(captials.count)

var number = [1:"one", 2:"two", 3:"three"]
print(number)
 number[4] = "four"
print(number)
 number[1] = "ten"
print(number)

var lnames = [2345:"Sri", 1234:"Bhavani", 3456:"Vidya"]
print(lnames)
lnames[3456] = "Rani"
print(lnames)
print(lnames[1234])

lnames.removeValue(forKey: 2345)
print(lnames)

for(key,values) in lnames{
    print(key)
}

for(key,values) in lnames{
    print(values)
}
for(key,values) in lnames{
    print("\(key) : \(values)")
}
//sets
var players : Set<String> = ["Sachin", "Rohit", "Virat", "Jay"]
print(players.count)
print(players)
print(players.contains("Rohit"))

players.insert("Srinu")
print(players)

var primeNumbers: Set<Int> = [2,3,5,7,11]
var numberList : Set<Int> = [1,2,5,9]

var unionSet : Set<Int> = primeNumbers.union(numberList)
print(unionSet)

import UIKit

var greeting = "Hello, playground"
var fact = "Swift is a type safe language"
var dev = "Development of Swift began in 2010"
var author = "Swift was created by Chris Lattner"
fact.count
print(fact)
fact += ", it has a better memory management"
print(fact)
dev.append("by Apple")
print(dev)
print(author.lowercased())
print(author.uppercased())
print(author[author.startIndex])
//print(author[author.endIndex])
print(author[author.index(before: author.endIndex)])
print(dev[dev.startIndex])
print(dev[dev.index(before: dev.endIndex)])
print(author[author.index(author.startIndex,offsetBy: 6)])
print(author[author.index(author.endIndex,offsetBy: -5)])
print(fact[fact.index(fact.endIndex,offsetBy: -4)])

var name = "Sri Vidya Vilipala"
print(name.count)
print(name.lowercased())
print(name.uppercased())
print(name[name.startIndex])
print(name[name.index(before: name.endIndex)])
print(name[name.index(name.startIndex,offsetBy: 8)])
//String 02
var shoppingList = "The shopping list contains: "
var foodItems = "Cheese, Butter, Chocolate Spread"
var clothes = "Socks, T-shirts"

if clothes.hasPrefix("Socks") {
print("The first item in clothes is socks")
}else{
print("socks is not the first item in clothes")
}
print(foodItems.split(separator: ","))
if clothes.contains(","){
    print("Clothes contains more than one item")
}else{
    print("Clothes contain only one item")
}
print(foodItems[foodItems.startIndex..<foodItems.index(foodItems.endIndex,offsetBy: -7)])
//var foodItems = "Cheese, Butter, Chocolate Spread"
print(shoppingList)
shoppingList += foodItems[foodItems.index(foodItems.startIndex,offsetBy:8)..<foodItems.endIndex]
print(shoppingList)
clothes.remove(at: clothes.firstIndex(of: "T")!)
print(clothes)
//String 03
var course = "44643 -Mobile Computing-iOS"

print(course[course.startIndex..<course.index(course.startIndex,offsetBy: 5)])
print(course[course.index(course.startIndex,offsetBy: 7)..<course.endIndex])
course.remove(at: course.firstIndex(of: "-")!)
print(course[course.index(course.startIndex,offsetBy: 5)..<course.endIndex])
print(course[course.index(course.startIndex,offsetBy: 6)])

//String 04
let password = "Vidya@123"
let comfirmPassword = "Vidya@123"

if password == comfirmPassword {
    print("Password matches")
}else{
    print("Password doesn't matches")
}

let currentYear = "2021"
let enteredYear = "2020"
if currentYear.elementsEqual(enteredYear) == true{
    print("Entered year matches with current year")
} else{
    print("Entered year does not match with current year")
}
var vehiclePoweredBy = "Diesel"
if vehiclePoweredBy != "Electricity"{
    print("Vehicle is not eco-friendly")
}else{
    print("Vehicle is eco-friendly")
}

let nameGiven = "Anthony Martial"
var enteredName = "ANTHONY MARTIAL"
if nameGiven.lowercased() == enteredName.lowercased(){
    print("Entered name and given name matches with each other")
} else{
    print("Entered name does not matches with the given name")
}

import UIKit

//*******Questions******//
// 1. In which year was the first version of the Swift programming language introduced?
// Explain why Swift is considered a modern and user-friendly programming language.
// Also, describe type safety and type inference in Swift with examples.
print("The first version of the Swift programming language was introduced by Apple in the year 2014.")
print("Swift is considered a modern and user-friendly programming language because the swift syntax is simple and easy to understand, and it looks more like regular writing, so it is easier for developers to learn and write code in Swift. Swift is designed to be strong,fast and safe apps. Swift comes with a Playground where we can write code and see results immediately. Swift is also known for its type safety and type inference features, which help prevent errors and make code more maintainable and readable.")
print("Type safety ensures that variables and expressions are used with correct type of values, reduces the possibility of runtime errors and improves code reliability. For Example: var value : Int = 5, Here Int is a type of value. let value = Hello World (//compiler error: Cannot assign value of type 'string' to type 'Int') This will give an error because Hello World is not a valid value for Int type. Type inference enables a compiler to deduce the type of a particular expression or variable based on its initial value or the context in which it is used. For Example: var value : Int = 5 (//compiler infers that value is of type Int). let greet: String = Hello, World (//Explicitly specifies the types as string). By combining type safety and type inference, Swift keeps code clear and concise while reducing the chance of errors.")
print("----------------------")
// End of question 1


// 2. Declare a constant 'pi' of type Double with the value 3.14. Write code to calculate
// the area of a circle with a radius of 10.0 units using the formula: Area = pi * radius * radius.
// Print the calculated area as shown in the sample output below:
// "The area of the circle with radius 10.0 is **** square units."
let pi: Double = 3.14
let radius: Double = 10.0
let area: Double = pi * radius * radius
print("The area of the circle with radius \(radius) is \(area) square units.")
print("----------------------")
// End of question 2


// 3. Declare a variable with a value of 212°F (boiling point of water) in Fahrenheit, convert it to Celsius,
// and round it to one decimal place. Print the result in this format:
// "Temperature: 212°F is equivalent to ****°C."
var tempF: Int = 212
var tempC: Double = (Double(tempF) - 32) * 5 / 9
tempC = round(10 * tempC) / 10
print("Temperature: \(tempF)°F is equivalent to \(tempC)°C.")
print("----------------------")
// End of question 3


// 4. Write three statements about why Swift is a great language for beginners and developers.
// Display the first two statements on one line and the third statement on the next line using print statements.
print("Swift is a great language for beginners because it is easy to learn and understand.", terminator: " ")
print("It redues the possibility of frequent errors in the code.")
print("Developers love Swift because it allows them to build strong, fast and safe apps.")
print("----------------------")
// End of question 4


// 5. Display the following using a single print statement:
// "Swift is an intuitive, powerful, and safe programming language designed for iOS and other Apple platforms.
// It offers modern features, concise syntax, and exceptional performance that developers love."
print("""
Swift is an intuitive, powerful, and safe programming language designed for iOS and other Apple platforms. 
It offers modern features, concise syntax,and exceptional performance that developers love.
""")
print("----------------------")
// End of question 5


// 6. Declare two variables, num1 and num2, and assign them any two 3-digit numbers.
// Write code to calculate their product and determine how many digits the product contains.
// Print the result in this format:
// "The product of <num1> and <num2> is ****, and it has **** digits."
let num1 = 345
let num2 = 789
let product = num1 * num2
let numProduct = String(product).count
print("The product of \(num1) and \(num2) is \(product), and it has \(numProduct) digits.")
print("----------------------")
// End of question 6


// 7. Create a variable with the value "Swift programming is fun!".
// Count the total number of characters excluding spaces and print them as individual characters separated by "+".
// For example: "S+w+i+f+t+p+r+o+g+r+a+m+m+i+n+g+i+s+f+u+n"
let value = "Swift programming is fun!"
let characterSpace = value.replacingOccurrences(of: " ", with: "")
let countCharacterSpace = characterSpace.count
let str = String(characterSpace.dropLast())
print("The number of characters excluidng spaces in the above test is \(countCharacterSpace) The modified text is: ")
var char = ""
for character in str {
    if character != str.first{
        print("+\(character)",terminator: "")
    }
    else{
        print(character, terminator:"")
    }
}
print()
print("----------------------")
// End of question 7


// 8. A car is traveling at a constant velocity of 20 m/s for 12 seconds.
//Calculate the total distance traveled during this time period using the formula:
//Distance = velocity × time
//Print the result in this format:
//"The car traveled a distance of **** meters."
let velocity = 20
let time = 12
let distance = velocity * time
print("The car traveled a distance of \(distance) meters.")
print("----------------------")
// End of question 8


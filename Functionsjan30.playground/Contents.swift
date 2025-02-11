import UIKit

func greetUser(){
    print("Welcome User")
}
print(greetUser())

func sayHello() -> String{
    var name = "John"
    return "Hello \(name)!"
}
print(sayHello())

func sayHelloTo() -> String{
    var name = "Sri"
    return "Hello "+name+"!"
}
print(sayHelloTo())

func favProgram(name:String)->String{
    var name = "My favProgram is \(name)"
    return name
}
print(favProgram(name: "Swift"))

func addNumber(a:Int,b:Int)->Int{
    return a+b
}
print("The sum of number \(addNumber(a:2,b:3))")

func multiplyNumber(a:Int,b:Int,c:Int)->Int{
    return a*b*c
}
print("The Multplication of \(multiplyNumber(a:2,b:3,c:6))")

func manipulateNumber(input: Int, mode:Bool)->String{
    var counter = input
    if(mode){
        counter-=2
    }else{
        counter+=1
    }
    return "The \(mode ? "incremented" : "decremented" ) value is \(counter)"
}
var val = 19
print(manipulateNumber(input:val, mode:true))

func login(sid username:String, password:String)->Bool{
    if(username=="swift" && password=="uikit"){
        return true
    }
    return false
}
var login:Bool = login(sid: "swift", password: "uiki")
if login{
    print("User login success")
}else{
    print("Username or Password is incorrect")
}

func fullName(_ firstName:String, _ lastName:String)->String{
    return lastName+","+firstName
}
print(fullName("SriVidya","Vilipala"))

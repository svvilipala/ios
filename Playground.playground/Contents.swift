import UIKit

var batterylevel = 45
if batterylevel > 80{
    print("Battery is full with \(batterylevel)% charge.")
}else if batterylevel > 20{
    print("Battery level is moderate at \(batterylevel)%.")
} else {
    print("Battery is low at \(batterylevel)% . Please charge your device.")
}

var inputNumber = -10
if inputNumber > 0 {
    print("\(inputNumber) is a positive number.")
} else if (inputNumber < 0){
    print("\(inputNumber) is a negative number.")
    if(inputNumber%2==0){
        print("\(inputNumber) is a negative even number")
    }
    else {
        print("The number is 0")
    }
}

var isAuthemticated = false
var userRole = "guest"
if isAuthemticated {
    if userRole == "admin"{
        print("Welcome, Admin! You have full access.") }
    else {
        print("Welcome, User! you have limited access.")}
}
    else {
        print("Please log in to continue")
    }

var password:String="stephen@171"
if(password.count>8){
    if(password.contains(" ")){
        print("Password should not contain space")
    } else{
        print("Passsword is Strong")
    }
    }
    else {
        print("A password should be minimum 8 characters")
    }

var appVersion = 2.1
if appVersion >= 3.0{
    print("Your ap is up to date.")
} else if appVersion >= 2.0{
    print("Your app version is outdated. Update required.")
}

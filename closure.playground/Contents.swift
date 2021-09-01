import UIKit

//**********************************************simple*******************************************************

let driving = {
    print("I'm driving in my car")
}


func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

travel(action: driving)



//*************************************************tail*********************************************************

func travel2(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

travel2 {
    print("I'm driving in my car")
}

//*********************************************return*************************************************************

func travel(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travel { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

//*****************************************take parameter***************************************************************

func travel3(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}

travel3 { (place: String) in
    print("I'm going to \(place) in my car")
}
//*****************************************take multi parameter***************************************************************


func travel5(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}


travel5 {
    "I'm going to \($0) at \($1) miles per hour."
}

//*****************************************Returning closures from functions*************************************************


func travel6() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result = travel6()
result("London")
let result2: Void = travel6()("London")


//*****************************************Returning closures from functions*************************************************

func travel() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}




//*****************************************shortcut***************************************************************


func travel4(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travel4 { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

travel4 { place -> String in
    return "I'm going to \(place) in my car"
}

travel4 { place in
    return "I'm going to \(place) in my car"
}

travel4 { place in
    "I'm going to \(place) in my car"
}

travel4 {
    "I'm going to \($0) in my car"
}

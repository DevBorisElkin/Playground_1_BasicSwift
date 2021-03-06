import Foundation

public class TestLesson_12_2
{
    public func NewCodeHere()
    {
        //secondExample()
        thirdExample()
    }
    
    //-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
    
    private var _lessonName:String
    public init (lessonName:String)
    {
        _lessonName = lessonName
    }
    
    public func ShowLesson()
    {
        print(_lessonName)
        NewCodeHere()
    }
    
    func secondExample()
    {
        print("_____Closures example 1 below_____")
        
        // that way our clsure gets 'number', and prints to console 100 and then 200
        // because it's directly takes 'number' variable
        var number = 100
        
        var someClosure = {
            print("Executing some closure \(number)")
        }
        
        someClosure()
        
        number = 200
        someClosure()
        
        print("_____Closures example 2 below_____")
        
        // that way we are capturing 'anotherNumber' by setting it into [captureList] and then
        // by typing keyWork 'in' we let compiler know that closure executuin body is below
        // [captureList] is an array, we can put there any amount of variables we want
        // basically what it does with ValueType is
        /*
         var anotherNumber = 100
         
         var anotherClosure = { [anotherNumber] in
             let referencedValue = anotherNumber
             print("Executing some closure \(referencedValue)")
         }
         
         so it just creates a variable and (copies) stores the value there
         */
        
        var anotherNumber = 100
        
        var anotherClosure = { [anotherNumber] in
            print("Executing some closure \(anotherNumber)")
        }
        
        anotherClosure()
        anotherNumber = 200
        anotherClosure()
        
        print("_____Closures example 3 below_____")
        
        var person = Person("person_1")
        
        var thirdClosure = { [person] in
            print("Executing some closure \(person.name)")
        }
        
        thirdClosure()
        
        //person.name = "person_2"
        // even with capturing 'person' name displayed will be 'person_2' because
        // we're capturing reference type variable, and it would be like this
        /*
         var thirdClosure = { [person] in
             var copy = person // it's reference type
             print("Executing some closure \(copy.name)")
         }
         */
        
        // but with that captured 'person' will remain the same even though for variable
        // 'person' we assinged a different instance of a class
        // will there be a memory leak because of closure?
        // output to console both times: 'person_1'
        person = Person("Bob")
        
        thirdClosure()
        
        
        var someCoolClosure:((_ number: Int32) -> Void) = {number in
            print("printing number: \(number)")
        }
        someCoolClosure(5)
        
        var coolInt = 2
        var fourthClosure : ((_ p:Person, _ p2:Person, _ int:Int32) -> Void) = { p, p2, int in
            print("Executing some closure \(p.name) \(p2.name) \(int)")
        }
        
        // found this on YouTube https://www.youtube.com/watch?v=F68lyXkkfCY&ab_channel=PaulHudson
        // we can skip 'return' keyword because there's only one line and
        // compiler assumes if it's string that's what we're returning
        let sayHello = { (name : String) -> String in
            "Hi \(name)"
        }
        
        // or
        
        let sayHello_2 = { (name : String) -> String in
            print("gg")
            return "Hi \(name)"
        }
        
        print(sayHello("Boris"))
        
        // these both explicit type definitions are the same
        // hovewer the first one with 'Void' is preferred
        var b: () -> Void = doSomething
        var a: () -> () = doSomething
        
    }
    
    func doSomething(){
        
    }
    
    func thirdExample(){
        var str = "Hello There!"
        doSomeAction(str) { str_2 in
            print(str_2)
        }
        str = "Hello There! _ 2"
        
        doSomeAction_2 { numberOne, numberTwo in
            return numberOne * numberTwo
        }
        
        doSomeAction_3 { numberOne, numberTwo in
            return numberOne * numberTwo
        } _: { numberOne, numberTwo in
            return numberOne + numberTwo
        }

    }
    
    func doSomeAction(_ str:String, _ action : (_ firstVar:String) -> Void){
        action(str)
    }
    
    func doSomeAction_2(_ action : (_ numberOne : Int32, _ numberTwo : Int32) -> Int32){
        var result = action(2, 4)
        print("result of a calculation is \(result)")
    }
    
    // calculates and prints the result of two functiuons
    func doSomeAction_3(
        _ action : (_ numberOne : Int32, _ numberTwo : Int32) -> Int32,
        _ action_2 : (_ numberOne : Int32, _ numberTwo : Int32) -> Int32){
        
        var result = action(1,3) + action_2(4,2)
        print(result)
    }
}

class Person{
    
    var name:String
    
    init(_ nameOfPerson : String){
        name = nameOfPerson
    }
}

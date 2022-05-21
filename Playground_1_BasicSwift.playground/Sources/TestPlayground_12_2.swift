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
    }
    
    func doSomeAction(_ str:String, _ action : (_ firstVar:String) -> Void){
        action(str)
    }
    
    func doSomeAction_2(_ action : (_ numberOne : Int32, _ numberTwo : Int32) -> Int32){
        var result = action(2, 4)
        print("result of a calculation is \(result)")
    }
}

class Person{
    
    var name:String
    
    init(_ nameOfPerson : String){
        name = nameOfPerson
    }
}

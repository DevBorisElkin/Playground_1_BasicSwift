import Foundation

public class TestLesson_22
{
    public func NewCodeHere()
    {
        printValue(someValue: "Hello")
        printValue(someValue: 44)
        printValue(someValue: -2.5)
        
        printTwoValues(firstValue: 1, secondValue: "Hello")
        printTwoValues(firstValue: "Bla bla bla", secondValue: 44.1)
        
        var arrayOfInts = [1, 23, 43, 6, 2, -24, 2, -12]
        var arrayOfStrings = ["Hello", "There!", "Ha ha", "Another string"]
        var arrayOfDoubles = [2.5, 2.7, 1.0, 8.2, -76.2]
        
        printArray(someArray: arrayOfInts)
        printArray(someArray: arrayOfStrings)
        printArray(someArray: arrayOfDoubles)
        
        // _____________
        
        var b = "a"
        var a = "b"
        
        swappy(a: &a, b: &b)
        
        print("a: \(a)")
        print("b: \(b)")
        
        var a1 = CustomClassA(id: "b")
        var b1 = CustomClassA(id: "a")
        
        swappy(a: &a1, b: &b1)
        
        print("a1:\(a1.id), b1:\(b1.id)")
        
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
    
    // Use this to simply write code and test how you have memorized it
    public func ShowMemorizing()
    {
        
    }
    
    // ------ CODE BELOW -------
    public func printValue<T>(someValue : T){
        print(someValue)
    }

    public func printTwoValues<T,Y>(firstValue: T, secondValue: Y){
        print("firstValue: \(firstValue), secondValue: \(secondValue)")
    }

    public func printArray<T>(someArray : [T]){
        for element in someArray{
            print(element)
        }
    }
    
//    public func doSomethingWithUIElement<T : UIView>(someArray : [T]){
//        for element in someArray{
//            print(element)
//        }
//    }
    
    // 'inout' keyword allows you to change values of incoming classes and structs as function incoming parameters
    // by default, all incoming types that come as a fuction parameters are marked as 'let' - constants
    // hovewer 'inout' lets you actually modify incoming values, changing not exclusivley version of
    // parameters that come inside a function as a function parameters, but those variables that
    // are being passed from outside into a function
    func swappy<T>(a: inout T, b: inout T){
        let temp = a
        a = b
        b = temp
    }
    // inout is also required for reference type as we can see from method below. Without 'inout' the code won't compile
    func swappy(a: inout CustomClassA, b: inout CustomClassA){
        let temp = a
        a = b
        b = temp
    }
    
    // this one without 'inout' has an error
//    func swappy_2(a: CustomClassA, b: CustomClassA){
//        let temp = a
//        a = b
//        b = temp
//    }
    
    /*
     Conclusion
     Swift inout parameter is a parameter that can be changed inside the function where it’s passed into.

     To accept inout parameters, use the inout keyword in front of an argument.
     To pass a variable as an inout parameter, use the & operator in front of the parameter.
     */
    
    class CustomClassA{
        var id: String
        init(id : String){
            self.id = id
        }
    }
}

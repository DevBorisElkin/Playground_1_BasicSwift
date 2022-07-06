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
    
    
    func swappy<T>(a: inout T, b: inout T){
        let temp = a
        a = b
        b = temp
    }
}

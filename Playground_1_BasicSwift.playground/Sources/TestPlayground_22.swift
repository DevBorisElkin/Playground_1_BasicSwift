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
}

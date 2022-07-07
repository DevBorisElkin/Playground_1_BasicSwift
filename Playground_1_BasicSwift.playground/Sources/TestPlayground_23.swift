import Foundation

public class TestLesson_23
{
    public func NewCodeHere()
    {
        // 1) Multi string
        
        // regular string with multiple lines
        var regularMultiLineString = "FirstLine\nSecondLine\nThirdLine"
        
        // automatically adds '\n' at the end of each line
        // closing line '"""' defines offset
        var updatedMultiString =
        """
        UpdatedMultiline_1
        UpdatedMultiline_2
        UpdatedMultiline_3
        """
        
        print(regularMultiLineString)
        print(updatedMultiString)
        
        
        var someString = "awdawdawgrgt"
        
        // 2 string is now a collection
        // instead of writing (we can't write it like this anymore)
//        for character in someString.characters{
//            print(character)
//        }
        print("_____")
        // we can write
        for character in someString{
            print(character)
        }
        
        print("_____")
        // 3 - оператор одностороннего диапазона
        
        var someArray = [1,2,45,153,23]
        print(someArray[..<3])
        print("_____")
        print(someArray[0...3])
        print("_____")
        print(someArray[...3])
        print("_____1")
        print(someArray[2...])
        print("_____2")
        print(someArray[2...4])
        print("_____3")
        print(someArray[0...])
        
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
}

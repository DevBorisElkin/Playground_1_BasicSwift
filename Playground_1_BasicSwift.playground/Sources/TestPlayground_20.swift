import Foundation

public class TestLesson_20
{
    public func NewCodeHere()
    {
        // Просто "псевдонимы" для переменных, чтобы лучше понимать с чем работаем
        typealias Meter = Double
        typealias Santimeters = Int
        
        var length : Santimeters = 20
        var lenghtOfBoard : Meter = 100
        
        typealias DoubleInteger = (Int, Int)
        
        var twoIntegers : DoubleInteger = (1, 4)
        
        typealias DictionaryType = [String:Int]
        
        var dictionary: DictionaryType = [:]
        dictionary["Apartments"] = 122
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

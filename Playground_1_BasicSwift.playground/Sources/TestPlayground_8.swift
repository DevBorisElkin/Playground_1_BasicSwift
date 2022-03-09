import Foundation

public class TestLesson_8
{
    public func NewCodeHere()
    {
        var a = ("Boris", 22, 178.0)
        var b = (name: "Jonh", age: 22, height: 180.0)
        var test:(String, Int, Double) = ("Joe", 25, 175)
        var (name,age,height) = test
        print(name)
        print(age)
        print(height)
        
        print(a)
        print(b)
        print(getPerson())
        
        print(a.0)
        a.0 = "BorisChangedName"
        print(a.0)
        print(b.name)
        print(getPerson().height)
        
        var number:Int = 0
        var number2 = 6
        
        var (name2, _, _) = getPerson2()
        
        print(name2)
    }
    
    func getPerson() -> (name: String, age: Int, height: Double){
        return (name: "Boris", age: 22, height: 178.0)
    }
    
    func getPerson2() -> (String, Int, Double){
        return (name: "Boris2", age: 22, height: 178.2)
    }
    
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

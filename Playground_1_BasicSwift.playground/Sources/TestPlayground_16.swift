import Foundation

protocol Movable2{
    var speed:Int {get}
    func move()
}
struct Human{
    var name:String
}

// we can use extension methods like this to subscribe to
// classes or interfaces, and it can be quite convenient
extension Human:Movable2{
    var speed: Int {
        return 4
    }
    
    func move() {
        print("Run run run")
    }
    
    
}

extension String{
    func cleared()->String{
        var newStr = self
        newStr = newStr.trimmingCharacters(in: .whitespaces)
        newStr = newStr.prefix(1).uppercased() + newStr.dropFirst()
        return newStr
    }
    
    mutating func clear(){
        self = self.trimmingCharacters(in: .whitespaces)
        self = self.prefix(1).uppercased() + self.dropFirst()
    }
    
    var isShort:Bool{
        return self.count <= 15
    }
}

public class TestLesson_16
{
    public func NewCodeHere()
    {
        var str = "  this is   test string   ha ha    ha . "
        //str.clear()
        //print(str)
        //print(str.clear())
        //print("_____")
        
        print(str.isShort)
        
        var h1:Human = Human(name: "Kate")
        h1.move()
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

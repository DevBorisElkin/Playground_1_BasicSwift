import Foundation

public class TestLesson_21
{
    public func NewCodeHere()
    {
        var a = A()
        
        if let b = a.b, let c = b.c, let d = c.d, let someData = d.someData{
            print(someData)
        }else{
            print("Didn't find someData")
        }
        
        print(a.b?.c?.d?.someData)
        
        var someInt = a.b?.c?.d?.someData!
        var someInt_2 : Int = a.b?.c?.d?.someData ?? 111
        
        guard let someInt_3 = a.b?.c?.d?.someData else {
            return
        }
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
    
    public class A{
        public var b:B?
    }
    
    public class B{
        public var c:C?
    }
    
    public class C{
        public var d:D?
    }
    
    public class D{
        public var someData : Int? = 5
        public var someOtherData : Int = 7
    }
}

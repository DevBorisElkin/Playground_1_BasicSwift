import Foundation

public class TestLesson_19
{
    public func NewCodeHere()
    {
        var someTuple = (1,14,4,6)
        print(someTuple.2)
        let (val_1, val_2, val_3, val_4) = someTuple
        
        print("\(val_1) \(val_2) \(val_3) \(val_4)")
        
        var namedTuple = (firstVal: 4, secondVal: "Cat", thirdVal: 2.4)
        print("\(namedTuple.firstVal) \(namedTuple.secondVal) \(namedTuple.thirdVal)")
        
        var charactersAge = ["Bob":12, "Kate":24, "John":51, "Nathan":32]
        
        for (name, age) in charactersAge{
            print("\(name), \(age)")
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
}

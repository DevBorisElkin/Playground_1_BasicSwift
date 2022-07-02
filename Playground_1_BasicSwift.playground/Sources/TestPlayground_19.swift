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
        
        print("_______")
        
        var someNestedTuple = (1, 12, "Cat", ("Bob", "John", 1232))
        
        // since 3rd element is a tuple too, like that we will access someNestedTuple.3.0
        print(someNestedTuple.3)
        
        print(someNestedTuple.3.1)
        
        // Can't add or remove values to/from tuple, need to create a new one
//        var company = ("Programiz","Apple", "Netflix")
//        company.3 = "Google"
//        company.remove("Apple")
//        print(company)
        
        var tupleWithDictionary = (1,12, [12:"Cat", 24:"Violin"])
        print(tupleWithDictionary.2[12])
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

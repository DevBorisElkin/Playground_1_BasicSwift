import Foundation

public class TestLesson_4
{
    public func NewCodeHere()
    {
        //var phoneBook:[String:String] = [:]
        //var phoneBook = [String:String]()
        var phoneBook = ["Boris":"+79630262177","David":"+78005553535"]
        phoneBook["David"] = "89976576211"  // edit value
        phoneBook["Alice"] = "89225576211"  // add value
        
        //var result = phoneBook.updateValue("+79199118806", forKey: "Boris")
        //print(result)
        if(phoneBook.updateValue("+79199118806", forKey: "Boris") != nil){
            print("Updated value")
        }
        if(phoneBook.updateValue("TEST_PHONE_NUMBER", forKey: "Nikola") != nil){
            print("UPDATE")
        }else{
            print("NEW")
        }
        
        // optional binding
        if let phone = phoneBook["Nikola"]{
            print(phone)
        }
        
        //phoneBook.removeValue(forKey: "Nikola")
        //phoneBook.removeAll()
        
        print(phoneBook.count)
        print(phoneBook)
        print(phoneBook.isEmpty)
        
        phoneBook["Test_1"] = "GG1"
        phoneBook["Test_2"] = "GG2"
        
        for key in phoneBook.keys{
            //print(phoneBook[key])
            print(key)
        }
        
        for val in phoneBook.values{
            print(val)
        }
        
        print("__________")
        for (key, value) in phoneBook{
            print("kay[\(key)], value[\(value)]")
        }
        
        
        
        
        
        
    }
    
    private var _lessonName:String
    public init (var lessonName:String)
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

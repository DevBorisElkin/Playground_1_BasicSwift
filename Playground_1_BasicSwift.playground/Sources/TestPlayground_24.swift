import Foundation

public class TestLesson_24
{
    public func NewCodeHere()
    {
        
    }
    
    enum Planet{
        case earth, mars, neptune, jupiter, sun
    }
    
    // 1) @unknown key word
    func action(planet: Planet){
        switch(planet){
        case .earth:
            print("Going back to Earth")
        case .mars:
            print("Going back to Mars")
        case .neptune:
            print("Going back to Neptune")
            // Default will never be executed if theres 3 planets and all of them covered, but, if we add new planet to enum,
            // that planet will fall into 'default' category. To make sure we're always covering all planets once we add them,
            // theres '@unknown' operator -> it will pop out warning saying that we must cover new case 'Switch must be exhaustive'
        @unknown default:
            print("Going back to unknown planet")
        }
    }
    
    // 2) Easy check for 'even' numbers
    
    // Old way
    func isEven(number: Int) -> Bool{
        return number % 2 == 0
    }
    
    // New way
    func isEven2(number: Int) -> Bool{
        return number.isMultiple(of: 2)
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

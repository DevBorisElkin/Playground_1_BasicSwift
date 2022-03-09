import Foundation

public class TestLesson_6
{
    public func NewCodeHere()
    {
        var x = 4
        var y = 20
        
        if(x < y && x > 5){
            print("x is lesser that y and x bigger than 5")
        }
        
        if(x < y){
            print("x is less than y")
        }else if(x > y){
            print("x is more than y")
        }else if(x == y){
            print("x is equal to y")
        }
        
        //var array = [Int]()
        var array2:[Int] = []
        //var array3 = [1,2,3,4,5]
        
        if(array2.isEmpty){
            print("EMPTY")
        }else{
            print("NOT EMPTY")
        }
        
        if(!array2.isEmpty){
            print("NOT EMPTY")
        }
        
        Calc(x: 6, y: 3)
        Calc2(x: nil, y: 3)
        Calc3_Switch(grade: 6)
        Calc3_Switch_2(grade: 2)
        print("_____")
        Calc3_Switch_3(HP: 100)
        Calc3_Switch_3(HP: 81)
        Calc3_Switch_3(HP: 80)
        Calc3_Switch_3(HP: 79)
        Calc3_Switch_3(HP: 25)
        Calc3_Switch_3(HP: 0)
        Calc3_Switch_3(HP: 1)
        Calc3_Switch_3(HP: 0.5)
        Calc3_Switch_3(HP: 1.1)
        Calc3_Switch_3(HP: -5)
    }
    
    func Calc(x:Float, y:Float){
        // simple and typical guard statement
        //if(x == 0 || y == 0){
        //    print("Can't perform calculation because x or y are equal to 0")
        //    return
        //}
        
        // swift exclusive improved guard statement
        guard (x != 0 && y != 0) else {return}
        guard x > 5 else {return}
        
        if y != 0{
            if x > 5{
                var z = x / y
                print("X is bigger than 5, result of calculation[\(z)]")
            }else{
                var z = x / y
                print(z)
            }
        }
    }
    func Calc2(x:Float?, y:Float){
        guard var _x = x else {return}
        
        print("Passed guard test and x is NOT nil")
    }
    
    func Calc3_Switch(grade:Int){
        switch grade {
        case 5:
            print("Excellent!")
        case 4:
            print("Good")
        case 3:
            print("Okay")
        case 2:
            print("Bad")
        default:
            print("Very very BAD")
        }
    }
    
    func Calc3_Switch_2(grade:Int){
        switch grade {
        case 5,4:
            print("Excellent!")
        case 3,2:
            print("Good")
        case 1:
            print("Okay")
        default:
            print("Very very BAD")
        }
    }
    
    func Calc3_Switch_3(HP:Float){
        switch HP {
        case 80...100:
            print("\(HP): Green")
        case 50...80:
            print("\(HP): Yellow")
        case 1...50:
            print("\(HP): Red")
        case 0:
            print("\(HP): Sure Dead")
        default:
            print("\(HP): Probably Dead")
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

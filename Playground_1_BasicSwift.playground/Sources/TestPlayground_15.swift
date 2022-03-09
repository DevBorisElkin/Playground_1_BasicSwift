import Foundation

protocol Movable{
    var speed:Int {get}
    func move()
}

public class TestLesson_15
{
    public func NewCodeHere()
    {
        var human = Human(firstName: "Bob")
        var car = Car(mark: "BMW")
        var cat = Cat(name: "Mysechka")
        
        let _objects:[Movable] = [human, car, cat]
        
        for obj in _objects{
            obj.move()
        }
    }
    
    class Human:Movable{
        var speed: Int = 5
        
        func move() {
            print("Human is running at speed \(speed)")
        }
        
        var firstName:String
        init(firstName:String){
            self.firstName = firstName
        }
    }
    struct Car:Movable{
        var speed: Int = 100
        
        func move() {
            print("Car is moving at speed \(speed)")
        }
        
        var mark:String
    }
    struct Cat:Movable{
        var speed: Int = 7
        
        func move() {
            print("Cat is running at speed \(speed)")
        }
        
        var name:String
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

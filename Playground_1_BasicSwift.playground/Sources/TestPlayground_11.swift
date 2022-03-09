import Foundation

public class TestLesson_11
{
    public func NewCodeHere()
    {
        var car = Car(number: 123, year: 2000)
        var car2 = car
        
        car.year = 3000
        
        print(car.year)
        print(car2.year)
        print("_______")
        
        var carClass = CarClass(number: 323, year: 2000, isCrashed: false)
        
        var carClass2 = carClass
        
        carClass.number = 3000
        
        print(carClass.year)
        print(carClass2.year)
        
        print("_______")
        
        var car3 = Car(number: 422, year: 2000, isCrashed: false)
        car3 = ChangeCar(car: car3)
        print(car3.year)
        
        print("_______")
        
        ChangeCarClass(car: carClass2)
        
        print(carClass.year)
        print(carClass2.year)
    }
    
    // car is marked as let because it's a value type
    // we can only copy incoming car to a new car and return second car
    func ChangeCar(car: Car) -> Car{
        var secondCar = car
        secondCar.year = 2444
        return secondCar
    }
    
    func ChangeCarClass(car: CarClass){
        car.year = 5555
    }
    
    struct Car{
        var number:Int
        var year:Int
        var isCrashed:Bool = false
        
        mutating func CrashCar(){
            print("Car had a crash")
            self.isCrashed = true
        }
    }
    
    class CarClass{
        var number:Int
        var year:Int
        var isCrashed:Bool = false
        
        init(number:Int, year:Int, isCrashed:Bool){
            self.number = number
            self.year = year
            self.isCrashed = isCrashed
        }
        
        func CrashCar(){
            print("Car had a crash")
            self.isCrashed = true
        }
    }
    
    
    // -*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
    
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

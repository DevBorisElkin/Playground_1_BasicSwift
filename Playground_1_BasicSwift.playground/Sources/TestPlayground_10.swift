import Foundation

public class TestLesson_10
{
    
    // оператор "===" проверяет, ссылаются ли 2 переменные на один экземпляр класса
    
    // оператор "==" проверяет, равны ли значения, но для кастомного класса нужно
    // реализовать протокол Equatable, и переопределить оператор "=="
    
    public func NewCodeHere()
    {
        var transport = Transport(numOfSeats: 1, color: .blue)
        transport.Move()
        transport.MakeSound()
        
        let car = Car(vinNumber: "E232654623", numOfSeats: 4, color: .purple)
        car.Move()
        car.MakeSound()
        car.CarSpecificMove()
    }
    
    enum Color{
        case red
        case green
        case blue
        case purple
        case black
    }
    
    class Transport{
        var numberOfSeats: Int
        var color: Color
        var gosNumber:String? // if it initialized as optional parameter, it can be not initialized
        // or you can specify default value like this
        // var someVal:Int = 5
        
        init(numOfSeats:Int, color:Color){
            self.numberOfSeats = numOfSeats
            self.color = color
        }
        
        func Move(){
            print("Tansport is moving")
        }
        
        func MakeSound(){
            print("Transport is makingSound")
        }
    }
    
    
    class Car:Transport{
        
        var vinNumber:String
        
        init(vinNumber:String, numOfSeats:Int, color:Color){
            self.vinNumber = vinNumber
            super.init(numOfSeats: numOfSeats, color: color)
        }
        
        override func Move() {
            print("Car is moving")
        }
        override func MakeSound() {
            print("Beeep Beeep")
        }
        
        func CarSpecificMove(){
            print("Car is making a movement that is only specific to Cars")
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

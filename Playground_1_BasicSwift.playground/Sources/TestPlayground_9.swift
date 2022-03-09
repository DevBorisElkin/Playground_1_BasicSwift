import Foundation

public class TestLesson_9
{
    public func NewCodeHere()
    {
        // this explisit way also appropriate but not necessary
        //var device:Device = Device.tablet
        
        var device2:Device = .smartWatch
    
        // again it's an explicit way but below is shown implicit
        var device3:Device = .laptop(mark: Device.MarkLaptop.apple)
        var device4:Device = .laptop(mark: .apple)
        var device5:Device = .laptop(mark: .acer)
        var device6:Device = .smartPhone
        
        doSomething(device2)
        doSomething(device3)
        doSomething(device4)
        doSomething(device5)
        doSomething(device6)
        
        var val:RawWalueExample = .one
        var val2:RawWalueExample = .four(mark: .fourOne)
        rawValueTesting(val: val)
        rawValueTesting(val: val2)
        
        var extractedEnumValue = TestEnum(rawValue: "DVA")
        print(extractedEnumValue)
    }
    
    func doSomething(_ chosenDevice:Device){
        switch chosenDevice {
        case .laptop(var mark) where mark == .apple:
            print("Wow it's an apple laptop!")
        case .laptop(mark: .acer):
            print("Acer laptop, okay")
        case .laptop(mark: .hp):
            print("Okay it's HP laptop")
        case .laptop:
            print("Ноутбук")
        case .desktop:
            print("ПК")
        case .tablet:
            print("Планшет")
        case .smartPhone:
            print("Смартфон")
        case .smartWatch:
            print("Умные часы")
        }
    }
    
    func rawValueTesting(val:RawWalueExample){
        switch val {
        case .one:
            print(val)
        case .two:
            print(val)
        case .three:
            print(val)
        case .four(var markFour) where markFour == .fourOne:
            print(markFour.rawValue)
        default:
            print("Default value")
        }
    }
    
    enum Device {
        // здесь указываем что laptop подразделяется на подтипы
        // лаптоп не может быть без конкретного подтипа, но в проверке
        // switch(case) может быть указан обобщенный тип
        case laptop(mark:MarkLaptop)
        case desktop
        case tablet
        case smartPhone
        case smartWatch
        // Пример вложенного енама
        // к стати, он не обязан находиться внутри
        // другого енама, а может находиться в классе
        enum MarkLaptop{
            case apple
            case acer
            case hp
        }
    }
    
    // raw value example
    enum RawWalueExample{
        case one
        case two
        case three
        case four(mark:SubFour)
        
        enum SubFour:String{
            case fourOne = "FOURONE"
            case fourTwo = "FOURTWO"
            case fourThree = "FOURTHREE"
        }
    }
    
    enum TestEnum: String{
        case one = "ODIN"
        case two = "DVA"
        case three = "TREE"
    }
    
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

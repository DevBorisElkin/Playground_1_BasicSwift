import Foundation

public class TestLesson_17
{
    public func NewCodeHere()
    {
        // уровни доступа
        // Open - самый открытый уровень доступа, назначается только классам
        // Public - опен позволяет наследование на класс из разных модулей
        //      паблик в таком случае не позволяет наследование
        // Internal - устанавливается по умолчанию
        // FilePrivate - ограничавает видимость метода или файла - файлом, где находится код
        // Private - максимальный уровень доступа
    }
    
    //-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
    open class Car_0{}
    public class Car_{}
    internal class Car{}
    fileprivate class Car_1{}
    private class Car_2{}
    
    internal var mileage = 5
    
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

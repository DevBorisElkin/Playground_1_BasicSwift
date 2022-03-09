import Foundation

public class TestLesson_1
{
    private var _lessonName:String
    public init (var lessonName:String)
    {
        _lessonName = lessonName
    }
    
    public func ShowLesson()
    {
        print(_lessonName)
        
        var a:Int = 10
        a = 11
        a += 1
        a -= a

        var b = 5
        b = 7

        let x = 5, y = 6, z = "Hello"

        // String, Integer, Float, Double, Float

        var d = 10.5

        var g:Float = 5.5

        var result = Float(d) + g

        print(result)

        let hello = "hello"
        let world = "world"
        let year = 2021
        let res = hello + " " + world
        print(res)

        var str1 = "\(hello) \(world) \(year)"
        print(str1)

        //for index in 0...10
        //{
        //    //print(index)
        //}

        var u = 10
        //while u > 0
        //{
        //    //print(u)
        //    //u -= 1
        //}

        // do { } while example
        repeat
        {
            print(u)
            u -= 1
        } while u > 0

        // comment

        /*
         Long comment
         */
    }
}

import Foundation

public class TestLesson_2
{
    private var _lessonName:String
    public init (var lessonName:String)
    {
        _lessonName = lessonName
    }
    
    public func ShowLesson()
    {
        print(_lessonName)
        // Опциональные типы
        
        //var wallet:Float = 0
        
        //var wallet:Float? = nil
        // Swift converts example above automatically
        // to example below
        //var wallet:Float?
        
        var wallet:Float?
        wallet = 25    // will be stored in "safe container"
        
        print(wallet) // simple
        print(wallet!) // force unwrap
        //wallet = nil
        print(wallet)
        
        if(wallet != nil)
        {
            print(wallet)
        }else
        {
            print("Come ON, the Wallet is nill, be careful there!")
        }
        
        // optional binding example
        
        if let myWallet = wallet
        {
            print(myWallet)
        }else{
            print("Tried to print optional type Wallet but it was nil")
        }
        
        // convert string to int
        var str = "1"
        // var str = "Hawdawd"
        print(Int(str))
        
        // example 2 string to int convertation with optional binding
        if let intStr = Int(str) // 'let' here could be var
        {
            print(intStr)
        }
        
        // this gives error because optional Int is not simple Int
        //var x:Int? = 10
        //var y:Int = x
        
        // to overcome this here's a quick solution
        //var x:Int? = 10
        var x:Int? = nil
        var y:Int = x ?? 7  // if x not nill y will copy x's value, but if x is nill,
        // y will get 7 value. Consider this as bool success = Int32.TryToParse()..
        
        print(x)
        print(y)
    }
    
    // Use this to simply write code and test how you have memorized it
    public func ShowMemorizing()
    {
        
    }
}

import Foundation

public class TestLesson_12
{
    public func NewCodeHere()
    {
        mainExample()
    }
    
    func mainExample(){
        var operation:(Double, Double) -> Double
        //operation = plus(a1:a2:)
        operation = plus
        
        //var result = operation(10, 5)
        //print(result)
        
        let shops:[String: Double] = ["Shop1":21000, "Shop2":15000, "Shop3":28000, "Shop4":11000, "Shop5":40000]
        
        // -*-*
        //for (key, value) in shops{
        //    print("key[\(key)], value[\(value)]")
        //}
        // -*-*
        
        // without closures
        let shopsLowProfit = filterShops(shops: shops, filter: lowProfit)
        let shopsHighProfit = filterShops(shops: shops, filter: highProfit)
        
        print(shopsLowProfit)
        print(shopsHighProfit)
        
        // with closures (in line closures)
        print("-*-*-*-*-*-*-*-*-*-")
        let shopsLowProfit_2 = filterShops(shops: shops) { $0 < 20000 }
        let shopsHighProfit_2 = filterShops(shops: shops) { $0 >= 20000 }
        print(shopsLowProfit_2)
        print(shopsHighProfit_2)
        
        requestData { success in
            print(success)
        } error: { textError in
            print(textError)
        }
        
        var digits = [1,23,64,4,125,12,54,23,3,7,6,24]
        var digits2 = [1,23,64,4,125,12,54,23,3,7,6,24]
        var digits3 = [1,23,64,4,125,12,54,23,3,7,6,24]
        
        digits.sort { (item1, item2) -> Bool in
            item1 < item2
        }
        
        // simplified way
        digits2.sort { $0 < $1 }
        digits3.sort(by: <)
        
        print(digits)
        print(digits2)
        print(digits3)
    }
    
    func requestData(success: (_ result:Int) -> (), error:(_ text:String) -> ()){
        // request ...
        
        let response = true
        if response{
            success(10)
        }else{
            error("Error code")
        }
    }
    
    func filterShops(shops:[String:Double], filter:(Double) -> Bool) -> [String:Double]{
        
        var filteredShops = [String:Double]()
        
        for (key, value) in shops{
            if filter(value){
                filteredShops[key] = value
            }
        }
        
        return filteredShops
    }
    
    func lowProfit(p: Double) -> Bool{
        if(p < 20000){
            return true
        }
        return false
    }
    
    func highProfit(p: Double) -> Bool{
        if(p >= 20000){
            return true
        }
        return false
    }
    
    func plus(a1:Double, a2:Double) -> Double{
        return a1+a2
    }
    func minus(a1:Double, a2:Double) -> Double{
        return a1-a2
    }
    func multiply(a1:Double, a2:Double) -> Double{
        return a1*a2
    }
    func division(a1:Double, a2:Double) -> Double{
        return a1/a2
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
}

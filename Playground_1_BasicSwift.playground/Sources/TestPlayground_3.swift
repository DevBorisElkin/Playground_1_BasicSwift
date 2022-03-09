import Foundation

public class TestLesson_3
{
    public func NewCodeHere()
    {
        //var names:[String] = []
        //var names = [String]()
        //var names:[String] = ["Boris", "Peter", "David"]
        var names = ["Boris", "Peter", "David"]
        
        var wallet = [Int](repeating: 25, count: 5)
        //print(wallet)
        
        //print(names[0])
        
        //for coolName in names
        //{
        //    print(coolName)
        //}
        
        //for index in names.indices{
        //    print(names[index])
        //}
        
        //print(names.count)
        
        // if(!names.isEmpty){}
        //if(names.isEmpty){
        //    print("Empty")
        //}else{
        //    print("Not Empty")
        //}
        
        wallet.append(100)
        wallet.append(200)
        
        //let wallet2 = [500, 1000]
        //wallet += wallet2
        
        wallet += [666, 777]
        
        wallet.insert(111, at: 0)
        
        //wallet.remove(at: 1)
        
        //wallet[0...2] = [10, 11, 12]
        wallet[3...5] = [10, 11, 12]
        
        //print("first: \(wallet.first)")
        //print("last: \(wallet.last)")
        
        //wallet.removeLast()
        //var last = wallet.removeLast()
        //wallet.removeLast(2)
        
        // wallet.dropLast()
        // -doesn't change source array, but returns as a
        // result copied array without number of last elements
        var wallet2 = wallet.dropLast(4) // ()
        // var wallet3 = wallet.dropFirst()
        // var wallet4 = wallet.removeFirst()
        
        //print(wallet)
        //print(wallet2)
        //print("last: \(wallet.last)")
        
        //wallet.sort() // sorted by accending
        //wallet.sort(by: >) // and this way by descending,
        //// > means that from biggest to smallest
        //print(wallet)
        
        // sorted() doesn't change source array, but returns
        // sorted copy of that array
        //var wallet5 = wallet.sorted(by: >)
        //print(wallet5)
        
        // returns a copy of source array filtered with params, so in this
        // specific case returns copy of source array only with 25s
        var filteredArray = wallet.filter { (item) -> Bool in
            item == 25
        }
        print(filteredArray)
        
        print(wallet)
        
        // below 3 examples of how to multiply each number on itself in that array
        //for coolIndex in wallet.indices{
        //    wallet[coolIndex] = wallet[coolIndex] * wallet[coolIndex]
        //}
        
        //var mappedArray = wallet.map{(item) -> Int in
        //    item * item
        //}
        
        var mappedArray = wallet.map{$0 * $0}
        
        print(mappedArray)
        
        //var number:Int = 10000
        var number:Int = 10001
        if mappedArray.contains(number){
            print("YES, mapped array contains \(number)")
        }else{
            print("No, mapped array doens't contain \(number)")
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

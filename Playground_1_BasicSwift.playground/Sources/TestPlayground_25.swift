import Foundation

public class TestLesson_25
{
    private var _lessonName:String
    
    public init (lessonName:String) { _lessonName = lessonName }
    
    public func ShowLesson()
    {
        print(_lessonName)
        NewCodeHere()
    }
    
    public func NewCodeHere()
    {
        // https://habr.com/ru/post/320152/
        
         // Topics:
         // 1) Basics
        
         // *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
        
         //---> Load Image asynchronously and once the loading is done, switch to the main thread and set image to UIImageView
        
//        var queue = DispatchQueue.global(qos: .utility)
//        var imageURL = URL(string: "https://picsum.photos/2000/3000")
//        queue.async { [weak self, imageURL] in
//            guard let url = imageURL, let imageData = try? Data(contentsOf: url) else{
//                print("Unknown error")
//                return
//            }
//
//            DispatchQueue.main.async {
//                self?.imageView.image = UIImage(data: imageData)
//            }
//        }
        
        // *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
        
        //---> Do some action with delay
        
//         fileprivate func delay(_ delay: Int, completionHander: @escaping () -> ()){
//             DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(delay), execute: completionHander)
//         }
        
        // *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
         
        // ---> Barriers Example - запускается не всегда, но можно посмотреть что будет
        // тут теряются элементы - то есть в массиве не будет 10 элементов, будет другое значение
//         var array = [Int]()
//         DispatchQueue.concurrentPerform(iterations: 10) { (index) in
//             array.append(index)
//         }
//         print(array)
        
        // Здесь элементы не "теряются", все при помощи барьера успешно, по очереди, добавляются в массив,
        // при входе в метод добавления, устанавливается барьер, и нет race condition
//         var array2 = SafeArray<Int>()
//         DispatchQueue.concurrentPerform(iterations: 10) { (index) in
//             array2.append(element: index)
//         }
//         print(array2.elements)
    }
}


class SafeArray<Element> {
    private var array = [Element]()
    private let queue = DispatchQueue(label: "DispatchBarrier", attributes: .concurrent)
    
    public func append(element: Element){
        queue.async(flags: .barrier){
            self.array.append(element)
        }
    }
    
    public var elements: [Element]{
        var result = [Element]()
        queue.sync {
            result = self.array
        }
        
        return result
    }
}

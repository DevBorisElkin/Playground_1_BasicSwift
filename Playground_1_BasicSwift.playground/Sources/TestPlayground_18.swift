import Foundation

public class TestLesson_18
{
    public func NewCodeHere()
    {
        // good explanation https://www.youtube.com/watch?v=1LnipXiSrSM&ab_channel=MarkMoeykens   // Timecode: 29:12
        // 1) deinit()
        /*
         deinit{} in a class is called right before class instance is going to be removed from memory
         
         every time we create an instance of a class
         //var car:Car? = Car()
         ARC - 'automatic reference counting' is going to increase the counter of references
         of a specific instance in memory by one
         -> counter += 1
         
         and when we do that
         car = nil
         -> counter -= 1
         
         when -> if(counter == 0) { doCleanUp() }
         */
        
        //2)
        /*
         2.1
         when debugging, press button on the buttom with name 'Debug Memory Graph'
         then press on the top left "Show The Debug Navigator"
         // then you can open right side panel and press 'Show the Memory inspector'
         
         2.2
         Product -> Profile -> Leaks
         
         */
        
        // 2) Cyclic references - Example m1
        var person: Person? = Person()
        var job: Job? = Job()
        
        person?.job = job
        job?.person = person
        
        // this will cause memory leak 'cyclic references' because we use 'strong-referencing'
        // deinit() in both of a classes won't be called
        // person = nil
        // job = nil
        
        
        
        // 3)
        /*
         A 'weak' or 'unowned' reference does NOT increment the reference count
         Example m2
         */
        // deinit will be called in both of classes
        person = nil
        job = nil
        
        /*
         Strong reference(Default) - The child class exists as long as the parent class exists
         
         Weak reference - The child may or may not exist if parent is removed from memory
         *Weak reference can't be let - must be mutable
         *Weak is applied to optionals
         
         Unowned reference - The child definitely exists all the time but is removed when parent is removed
         *Unowned applied to non-optionals, always need to have a value
         
         ___
         
         use weak when value can be nil, and use unowned when value can't be nil
         Just like the 'weak' reference, 'unowned' won't increase the reference count
         */
        
    }
    
    // Example m1
    //class Person{
    //    var job : Job?
    //}
    //class Job{
    //    var person : Person?
    //}
    
    // Example m2
    // 'Parent'
    class Person{
        var job : Job?
        
        deinit{
            print("Calling deinit right before removing instance from the memory")
        }
    }
    // 'Child'
    class Job{
        weak var person : Person?
        
        deinit{
            print("Calling deinit right before removing instance from the memory")
        }
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
}

import Foundation

public class TestLesson_13
{
    public func NewCodeHere()
    {
        let student1 = Student(name: "Nilokay", university: "MGY")
        let student2 = Student(name: "Petr", university: "MIFI")
        
        let worker1 = Worker(name: "Vasiliy", company: "Google")
        let worker2 = Worker(name: "Ivan", company: "Apple")
        
        let child1 = Child(name: "Artyom", nickname: "Batman")
        let child2 = Child(name: "Sasha", nickname: "Spiderman")
        
        let arrayPeople = [student1,student2,worker1,worker2,child1,child2]
        
        for man in arrayPeople{
            man.say()
            
            //if man is Student{
            //    let student = man as! Student
            //    //(man as! Student).study()
            //    student.study()
            //}else if man is Worker{
            //    (man as! Worker).work()
            //}else if man is Child{
            //    (man as! Child).play()
            //}
            
            
            // with oprional binding
            //if let student = man as? Student{
            //    student.study()
            //}
            
            switch man{
            case let stud as Student:
                stud.study()
            case let worker as Worker:
                worker.work()
            case let child as Child:
                child.play()
            default:
                break
            }
        }
        
        let human = Human(name: "Bob", car: nil)
        
        
        var music = Music(mark: "Pioneer", power: 500, cdDisks: [Disk(name: "AC/DC"), Disk(name: "Imagine Dragons")])
        var car = Car(mark: "BMW", music: music)
        var car2 = Car(mark: "Toyota", music: Music(mark: "Pioneer2", power: 300, cdDisks: [Disk(name: "Arctic Monkeys"), Disk(name: "Nirvana")]))
        let human2 = Human(name: "Brian", car: car)
        
        let human3 = Human(name: "Steven", car: car2)
        
        let arrayHuman = [human,human2, human3]
        
//        for h in arrayHuman{
//            if let carHuman = h.car{
//                if let music = carHuman.music{
//                    if let disks = music.cdDisks{
//                        if let disk = disks.first{
//                            print(disk.name)
//                        }
//                    }
//                }
//            }
//        }
        
        print("-__-__-__-__-__-")
        
        for h in arrayHuman{
            //if let cdDisk = h.car?.music?.cdDisks?.first{
            //    print("\(h.name) is listening to \(cdDisk.name)")
            //}
            
            if let cdDisks = h.car?.music?.cdDisks, !cdDisks.isEmpty{
                for disk in cdDisks{
                    print("\(h.name) is listening to \(disk.name)")
                }
            }
        }
    }
    
    class Human{
        var name:String
        var car:Car?
        func say(){
            print("\(name) говорит")
        }
        
        init(name:String, car:Car? = nil){
            self.name = name
            self.car = car
        }
    }
    struct Car{
        var mark:String
        var music:Music?
        
    }
    struct Music{
        var mark:String
        var power:Int
        var cdDisks:[Disk]?
    }
    struct Disk{
        var name:String
    }
    
    
    class Student:Human{
        var university:String
        func study(){
            print("I Love to study in \(university)")
        }
        
        init(name:String, university:String){
            self.university = university
            super.init(name: name)
        }
    }
    class Worker:Human{
        var company:String
        func work(){
            print("I Love to work in \(company)")
        }
        
        init(name:String, company:String){
            self.company = company
            super.init(name: name)
        }
    }
    class Child:Human{
        var nickname:String
        func play(){
            print("I Love to play a role of \(nickname)")
        }
        
        init(name:String, nickname:String){
            self.nickname = nickname
            super.init(name: name)
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
    
    // Use this to simply write code and test how you have memorized it
    public func ShowMemorizing()
    {
        
    }
}

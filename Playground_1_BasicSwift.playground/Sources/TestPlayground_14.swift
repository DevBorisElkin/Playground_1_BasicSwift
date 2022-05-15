import Foundation

public class TestLesson_14
{
    public func NewCodeHere()
    {
        var car = Car(mark: "Toyota", model: "RAV4", year: 2020)
        //car.year = 2019
        car.year = 1999
        
        print(car.fullName)
        car.fullName = "Toyota Corolla 2010"
        print(car.fullName)
        
        print(car.price)
        print(car.price)
        
        var car2 = Car(mark: "Toyota", model: "RAV4", year: 2020)
        var car3 = Car(mark: "Toyota", model: "RAV4", year: 2020)
        
        print(Car.count)
        print(Car.getNumberCars())
    }
    
    struct Car{
        var mark:String
        var model:String
        var year:Int{
            // willSet & didSet не вызываются при инизиализации
            // структуры, работают только когда изменяем свойство
            // после создания экземпляра
            
            // вызывается при назначении нового значения
            willSet{
                print("OldValue, year - \(self.year)")
                print("NewValue, year - \(newValue)")
            }
            // вызывается пост фактум, после назначения
            didSet{
                // просто доп проверка как в классический Properties
                if(self.year < 2000){
                    self.year = 2000
                }
                print("CurrentValue, year - \(self.year)")
            }
        }
        // computed property (вычисляемый property), как GetFullName() в Java
        var fullName:String {
            get{
                return "\(mark) \(model) \(year)"
            }
            set{
                let full = newValue.components(separatedBy: " ")
                if(full.count > 2){
                    self.mark = full[0]
                    self.model = full[1]
                    if let newYear = Int(full[2]){
                        self.year = newYear
                    }
                }
                //print(newValue)
            }
        }
        // Если используем только геттер то можно сократить код
        //var fullName:String {
        //    return "\(mark) \(model) \(year)"
        //}
        
        // lazy properties example
        // without lazy calculations will actually take place when we create an instance
        // of the struct, and then will go throught instantly, but with lazy
        // calculations take place only when we ask for that from car(even with different cars)
        // anyways calculations are done only one time
        lazy var price:Int = getPrice()
        
        static var count:Int = 0
        
        init(mark:String, model:String, year:Int){
            self.mark = mark
            self.model = model
            self.year = year
            
            Car.count += 1
        }
        
        // если используем класс, то вместо func нужно поставить class, т.к. дочерние
        // объекты не смогут переопределять
        static func getNumberCars() -> Int{
            return Car.count
        }
    }
    
    public static func getPrice() -> Int{
        print("Start")
        
        var i = 0
        while i < 3000000000{
            i += 1
        }
        
        print("Finish")
        return 3000000000
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
    
    // -*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
    // UPDATED ON 16th May 2022
    // -*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
    
    // and below is example of a get-only property
    // 1) and 2) will be called if we use declared testClassVariable in some way
    
    var testClassVariable : TestClass{
        print("1) Created variable of a test class")
        var variable:TestClass = TestClass()
        variable.number = 2
        return variable
    }
    
    class TestClass{
        var number:Int = 0
        
        init(){
            print("2) called initializer of TestClass")
        }
    }
    
    // and this is just like example before but with 'let' instead of 'var'
    
    //let mapView : MKMapView = {
    //    let mapView = MKMapView()
    //    mapView.translatesAutoresizingMaskIntoConstraints = false
    //    return mapView
    //}()
}

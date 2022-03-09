import Foundation

public class TestLesson_5
{
    public func NewCodeHere()
    {
        // Set - что-то среднее между Array, Dictionary
        // Сет содержит внутри только значения, подобно массиву
        // но в сете порядок значений не сохраняется
        // не может содержать дубликатов
        
        //var numbers = Set<Int>()
        // if at the end were two 5s, the last one wouldn't be added
        var numbers:Set = [1,2,3,4,5]
        print(numbers)
        
        numbers.insert(6)
        // it won't add 4 because it already contains such value
        numbers.insert(4)
        
        //var element = 3
        var element = 7
        if(numbers.insert(element).inserted){
            print("Successfully added \(element)")
        }else{
            print("Failed to add \(element) because the set already had it")
        }
        print(numbers.remove(100)) // nil because it doesn't contains 100
        // returns nill if it doesn't contains it
        // and returns the value after removal if it contained it
        print(numbers.remove(1))
        print(numbers)
        
        //var val2 = 2
        var val2 = 77
        if numbers.contains(val2){
            print("Set contains \(val2)")
        }else{
            print("Set doesn't contain \(val2)")
        }
        
        print(numbers.count)
        print(numbers.isEmpty)
        
        for num in numbers{
            print(num)
        }
        
        // doesn't touch initial set and returns sorted array
        var array = numbers.sorted(by: <)
        print(array)
        
        print("_____")
        
        var oddDigits:Set = [1,3,5,7,9,10]
        var evenDigits:Set = [2,4,6,8,10,9]
        
        // объединить 2 сета и конвертировать результат в массив
        var all = oddDigits.union(evenDigits).sorted()
        print(all)
        
        print("_____")
        // intersection selects only colliding elements
        let inter = oddDigits.intersection(evenDigits).sorted()
        print(inter)
        // this returns no values
        
        oddDigits.insert(2)
        oddDigits.insert(4)
        print("_____")
        let inter2 = oddDigits.intersection(evenDigits).sorted()
        print(inter2)
    
        print("_____")
        // subtraction will check oddDigits and will leave only
        // unique values that are only unique to oddDigits
        // which means - which are never in the even digits
        let inter3 = oddDigits.subtracting(evenDigits).sorted()
        print(inter3)
        let inter4 = evenDigits.subtracting(oddDigits).sorted()
        print(inter4)
        
        print("_____")
        // symmetricDifference will select only digits
        // that are present only at one set at a time
        let sumD = oddDigits.symmetricDifference(evenDigits).sorted()
        print(sumD)
        
        // Проверяет является ли сет тестСет сабсетом сета оддДиджитс
        // Если в оддДиджитс не будет хотя бы 1 нужного элемента, который
        // будет в тестовом сете, то нам вернет фалс
        let testSet:Set = [1,5,10] //+11
        print(testSet.isSubset(of: oddDigits))
        // Проверяет, есть ли все значения тест сета в оддДиджитс, но смысл обращения
        // немного другой.
        print(oddDigits.isSuperset(of: testSet))
        // вернет true если у сетов не будет общих значений
        print(oddDigits.isDisjoint(with: testSet))
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

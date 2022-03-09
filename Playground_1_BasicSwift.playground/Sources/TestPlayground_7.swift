import Foundation

public class TestLesson_7
{
    public func NewCodeHere()
    {
        var cash:[Double] = [123,434,657,125,532,634,125]
        var cash_2:[Double] = [442,434,13,125,5341,35,24]
        var total:Double = 0
        
        //for index in cash.indices{
        //    total += cash[index]
        //}
        //for m in cash{
        //    total += m
        //}
        
        // result инициализирован нулем, проходится по всем
        // элементам и приплюсовывает к переменной резалт каждый элемент массива
        // это полный вариант записи
        //cash.reduce(0) { (total, item) -> Double in
        //    total + item
        //}
        
        // сокращенный вариант записи
        total = cash.reduce(0, +)
        
        print("Money amount: \(total)")
        
        total -= total * 0.5
        print("Money amount: \(total)")
        
        print("_____")
        print(GetIncomeTotal(income: cash, expenses: 0.5))
        print(GetIncomeTotal(income: cash_2, expenses: 0.3))
        print(GetIncomeTotal_2(with: cash, expenses: 0.5))
        print(GetIncomeTotal_3(cash, 0.5))
        print(GetIncomeTotal_4(customNameOfIncome: cash))
        print(GetIncomeTotal_4(customNameOfIncome: cash, 0.5))
    }
    
    func GetIncomeTotal(income:[Double], expenses:Double) -> Double{
        var total = income.reduce(0, +)
        total -= total * expenses
        return total
    }
    // здесь пример внешнего имени (with) и внутренного (income)
    func GetIncomeTotal_2(with income:[Double], expenses:Double) -> Double{
        var total = income.reduce(0, +)
        total -= total * expenses
        return total
    }
    // Пример сокрытия внешнего имени с плейсхолдером '_'
    func GetIncomeTotal_3(_ income:[Double], _ expenses:Double) -> Double{
        var total = income.reduce(0, +)
        total -= total * expenses
        return total
    }
    // Пример с значениями по умолчанию
    // У функции будет 2 конструктора
    func GetIncomeTotal_4(customNameOfIncome income:[Double], _ expenses:Double = 0.5) -> Double{
        var total = income.reduce(0, +)
        total -= total * expenses
        return total
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

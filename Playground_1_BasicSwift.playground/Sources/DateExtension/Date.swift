import Foundation

extension Date {

    public func offsetFrom(date: Date) -> String {

        let dayHourMinuteSecond: Set<Calendar.Component> = [.day, .hour, .minute, .second]
        let difference = NSCalendar.current.dateComponents(dayHourMinuteSecond, from: date, to: self)

        let seconds = "\(difference.second ?? 0)s"
        let minutes = "\(difference.minute ?? 0)m" + " " + seconds
        let hours = "\(difference.hour ?? 0)h" + " " + minutes
        let days = "\(difference.day ?? 0)d" + " " + hours

        if let day = difference.day, day          > 0 { return days }
        if let hour = difference.hour, hour       > 0 { return hours }
        if let minute = difference.minute, minute > 0 { return minutes }
        if let second = difference.second, second > 0 { return seconds }
        return ""
    }
    
    public func prettyOffsetFrom(date: Date) -> String {

        let comparationComponents: Set<Calendar.Component> = [.year, .month, .day, .hour, .minute, .second]
        let difference = NSCalendar.current.dateComponents(comparationComponents, from: date, to: self)

        if let yearsDiff = difference.year {
            let result: String = "\(yearsDiff)" + (yearsDiff > 1 ? " years ago" : " year ago")
            return result
        }
        
        if let monthsDiff = difference.month {
            let result: String = "\(monthsDiff)" + (monthsDiff > 1 ? " months ago" : " month ago")
            return result
        }
        
        if let daysDiff = difference.day {
            
            if daysDiff.isMultiple(of: 7){
                let weeksDiff = daysDiff % 7
                let result: String = "\(weeksDiff)" + (weeksDiff > 1 ? " week ago" : " weeks ago")
                return result
            }
            
            let result: String = "\(daysDiff)" + (daysDiff > 1 ? " day ago" : " days ago")
            return result
        }
        
        if let hoursDiff = difference.hour {
            let result: String = "\(hoursDiff)" + (hoursDiff > 1 ? " hour ago" : " hours ago")
            return result
        }
        
        if let minutesDiff = difference.minute {
            let result: String = "\(minutesDiff)" + (minutesDiff > 1 ? " minute ago" : " minutes ago")
            return result
        }
        
        return "Moments ago"
    }
}

//: [Previous](@previous)
struct Task {
    var title:String
    var time:Int?
    
    var owner:Employee
    var participant:Employee?
    
    var type:TaskType
    
    enum  TaskType {
        case call
        case Report
        case Meet
        case Support
        
        var typeTitle:String {
            get {
                let titleString:String
                switch self{
                case .call:
                    titleString = "call"
                case .Report:
                    titleString = "Report"
                case .Meet:
                    titleString = "Meet"
                case .Support:
                    titleString = "Support"
                }
                return titleString
            }
        }
    }
}

class Employee {
    var name:String?
    var phoneNumber:String?
    var boss:Employee?
    
}

let me:Employee = Employee()
me.name = "alex"
me.phoneNumber = "0101235678"

let toby = Employee()
toby.name = "toby"
toby.phoneNumber = "0104567890"

var callTask = Task(title: "call to randy", time: 10*60, owner:me, participant:nil, type:.call)

var reportTask = Task(title:"report to boss", time:nil, owner:me, participant:nil, type:.Report)


var todayTask:[Task] = []
todayTask += [callTask, reportTask]
todayTask[1].time = 15*60

callTask.title = "call to toby"
print("today task = \(todayTask), callTask = \(callTask)")


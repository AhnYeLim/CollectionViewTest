//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

struct Task {
    var title:String
    var time:Int?
    
    var owner:Employee
    var participant:Employee?
}

class Employee {
    var name:String?
    var phoneNumber:String?
    var boss:Employee?
}

let me:Employee = Employee()
me.name = "Alex"
me.phoneNumber = "010-1234-5678"

let toby = Employee()
toby.name = "toby"
toby.phoneNumber = "011-5678-1234"

print("\(toby.phoneNumber)")




var callTask = Task(title: "call to randy", time: 10*60, owner: me, participant: toby)

var reportTask = Task(title: "report to boss", time: nil, owner:me, participant:nil)

callTask.participant?.phoneNumber = "010-5678-1234"

print("\(toby.phoneNumber)")

var todayTask:[Task] = []
todayTask += [callTask, reportTask]
todayTask[1].time = 15*60

callTask.title = "call to toby"

print("today task = \(todayTask), call task = \(callTask)")
//Task 라는 구조체가 배열안에 들어가면 그 값을 변경해도 배열안의 값은 변경되지 않음. 구조체는 상수로 선언하면 그 값을 변경할 수 없음.

//class로 오브젝트를 만듬.참조로 동작. 상수로 만들어도 내부 값이 변수면 나중에 수정할 수 있음.




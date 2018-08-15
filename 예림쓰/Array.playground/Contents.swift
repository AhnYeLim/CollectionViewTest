//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
//Array: 순서를 가지고 있는, 같은 타입의 값들의 배열

var meetingRooms:Array<String> = ["yelim", "jane", "john"]
var groups:[Int] = [10, 8, 14, 5]

meetingRooms += ["sera"]

meetingRooms.insert("tae seon", at: 1)
let maxSpeed:Int = 200

var currentSpeed:Int = 110
currentSpeed += 10

var speedHistory:[Int] = []
var myArray = [String] ()

speedHistory += [currentSpeed]
let gpsSpeed = 114.3
speedHistory.append(Int(gpsSpeed))

//값 읽어내기
speedHistory[1]
speedHistory.first

let historyBackup = speedHistory
speedHistory += [150]
historyBackup


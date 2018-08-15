//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var roomCapacity:[String:Int] = ["Bansky":4, "rivera":8, "kaholo":30, "nomore":3]
//roomCapacity += ["reno":40]
roomCapacity["renor"] = 40
roomCapacity["rivera"]

//let roomNames = roomCapacity.keys
//let capacities = roomCapacity.values
//tuple 형태로 얻어짐

//array형식으로 불러오고 싶다면
let roomNames2 = [String](roomCapacity.keys)
let capacities = [Int](roomCapacity.values)


//set은 순서가 없음.
let subway2 :Set = ["시청", "을지로입구", "을지로3가", "을지로4가"]
let subway3 :Set = ["지축", "구파발", "연신내", "을지로3가"]

//합집합, 교집합 등 연산 가능
let transfer = subway2.intersection(subway3)
//let notTransfer = subway2.subtract(subway3) 오류남

let union = subway2.union(subway3)
let exOR = subway2.symmetricDifference(subway3)

if transfer.count > 0{
    print("환승역은 \(transfer) 입니다.")
} else {
    print("환승역은 없습니다")
}
for station in subway2{
    print("이번 역은 \(station) 입니다")
}

for (roomNames,capacities) in roomCapacity{
    let roomDescription:String
    
    //switch: 모든경우를 다 적어줘야 함
    switch capacities{
    case 4:
        roomDescription = "\(roomNames)은 스터디 룸이며 정원은 \(capacities)명 입니다."
    case 5...10:
        roomDescription = "\(roomNames)은 팀 세미나 룸이며 정원은 \(capacities)명 입니다"
    case 11...30:
        roomDescription = "\(roomNames)은 그룹 세미나 룸이며 정원은 \(capacities)명 입니다"
    //case let caseCapacity where caseCapacity > 30:
        //roomDescription = "\(roomNames)의 정원은 \(capacities)명이며 별도의 사용신청이 필요합니다"
    case _ where capacities > 30:
        roomDescription = "\(roomNames)의 정원은 \(capacities)명이며 별도의 사용신청이 필요합니다."
    
    default:
        roomDescription = "\(roomNames)의 정보를 다시 확인해 주세요"
    }
}

let name = "yelim"
name.characters.count

let tuple = ("예림", 21  )






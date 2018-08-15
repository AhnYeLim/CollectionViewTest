//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
print("hello, playground")


let name = "yelim"
var greeting = "Hello"

greeting += " " + name
// " " 한칸 띄우기 "" 는 한칸 띄우기 기능 안됨. " " 아무것도 없는 것도 지정 가능함. name 은 이미 String 타입으로 지정해 놨으므로 "" 안붙여도 됨.

let characters = name.characters
//name.characters 의 character는 하나의 struct 임 모든 Strin 에는 CharacterView 라는 하나의 type, 즉 구조체가 있음.Array 랑 비슷한 애임. 얘는 문자열의 하나하나의 요소를 말해주는 애임. let flower = "예쁜 꽃"
// for c in flower.character {
// print (c) }

// 예
// 쁜
// 
// 꽃

let count = characters.count

let url = "www.codershigh.com"
// url 앞에 어떤 문자가 있는지 없는지 알 수 있는 함수
let hasProtocol = url.hasPrefix("http://")

print("예림 나이는\(21)살 이다.")
print(name)

//  \()로 추가

var currentSpeed:Int = 110

currentSpeed += Int(20.5)
let intMax = Int.max
let UintMax = UInt.max
let intMin = Int.min
let UintMin = UInt.min
//Int.max: 스위프트에서 표현할 수 있는 정수 중 가장 큰수 Int.min :swift에서 표현할 수 있는 정수 중 가장 작은 수
//UInt.max: swift 에서 표현할 수 있는 양의 정수 중 가장 큰 수  UInt.min: swift에서 표현할 수 있는 양의 정수 중 가장 작은 수

let pi = 3.14
let divider = 2
let halfPi = 3.14/Double(divider)


//Double 은 Double 끼리 Int 는 Int 끼리 계산해야 함 정수는 정수끼리 소수는 소수끼리 연산--> 타입 변환 필요!!

var string = ""
string = "안녕"
print(string)

let has = url.hasSuffix("com")

// type 변환하기: String(Double(65.9))

let distance = 65.9
let annouce = "판교에서 파주는" + String(distance) + "km 거리입니다"


















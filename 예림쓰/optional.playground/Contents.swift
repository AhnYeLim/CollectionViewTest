//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
//nil: '값이 없음'을 나타낸다. 모든 타입에서 사용이 가능하다.
//optional: 실행중 nil이 될 수 있는 변수에 '?'를 붙여 특별 관리한다. 실행중 nil 될수 있는 변수는 프로그램을 크래시나게 할 수 있는 가능성이 큼.

var title : String = "Storyboard Prototyping"
var title2 : String? = nil
title2 = "Story"
var ratings : [Int]? = nil
var supportURL : String? = nil

supportURL = "www.codershigh.com"

var bookDescription:String = "\(title)"
if ratings != nil {
    bookDescription += "has \(ratings!.count) ratings"
}
if supportURL != nil {
    bookDescription += "\r\nsupport web page : \(supportURL)"
}
print("\(bookDescription)")
//\(supportURL!) : !붙이면 optional()가 사라지고 "www.codershigh.com"만 나옴.
//print("\(title) has \(ratings!.count) ratings. \r\nsupport web page : \(supportURL)")
// 에러남. 프로그램이 죽어버림. Force Unwrapping:! 값의 존재를 확신할 때 사용. 하지만 !를 남발하면 위의 경우처럼 crash가 남.!가 많은 코드는 좋은 코드가 아님. 가능한 지향해야 함.   !:잠재적인 crash 가능성이 있다. crash 일으킬 가능성이 높음.


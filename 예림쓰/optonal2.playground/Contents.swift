//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
//optional의 접근법
//Force Unwrapping: !  :값의 존재를 확신 할 때 사용하지만 crash일어날 가능성이 커서 사용을 지향해야 함.
//Optional binding: if let, if var    :optional이 아닌 새로운 상수와 변수 생성.

var title : String = "Storyboard"
var ratings : [Int]? = nil
var supportURL : String! = nil

supportURL = "www.codershigh.com"

var bookDescription:String = "\(title)"
if let theRatings = ratings {
    bookDescription += "has \(theRatings.count) ratings"
}
//if let theURL = supportURL {
    //bookDescription += "\r\nsupport web page : \(theURL)"
//}
bookDescription += "\r\nsupport web page : \(supportURL)"
print("\(bookDescription)")
//처음에는 nil로 만들어져서 어쩔 수 없이 옵셔널 이지만 반드시 값을 가진다는 걸 보장할 수 있을 때 사용
//Implicitly Unwrapped Optional: 선언시 ! 사용    :구조적으로 초기화 이후 항상 값이 존재하는 경우를 위한 편의장치
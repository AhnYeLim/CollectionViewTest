//: A UIKit based Playground for presenting user interface

//변수의 타입이 함수.정수 값 두개 받아서 정수 반환하는 함수의 타입. 변수에 함수를 할당하는 것.
var fp:(Int, Int) -> Int

fp = {
    (param1:Int, param2:Int) ->Int in
    return param1 + param2
    
}

fp(1,2)
//()->Void 함수를 타입으로 가지는 completion이라는 이름의 매개변수가 들어감. Void는 반환값이 없다는 의미.
func methodA(completion:()->Void) {
    print("룰루랄라~~~")
    completion()
}

var finishMethod = {
    ()->Void in
    print("끝났음")
}


var afterMethod = {
    () -> Void in
    print("End")
}

methodA(completion: finishMethod)
methodA(completion: afterMethod)
methodA(completion: {
    () ->Void in
    print("tttt")
    })

//fp1의 타입이 (Float,Float)받아서 Float반환 하는거.
var fp1:(Float,Float) -> Float

fp1 = {
    (param1:Float, param2:Float)->Float in
    return param1 + param2
}
fp1 = {
    return $0 + $1
}
//$1은 매개변수 첫번째꺼, $1은 매개변수 두번째꺼
//return 도 생략가능
fp1 = {
    $0 + $1
}
fp1(1.0, 2.0)



func getAddFunc() -> (Int,Int) ->Int {
    func addFunc(firstNum:Int, secondNum:Int)->Int {
        return firstNum + secondNum
    }
    return addFunc
}

let myAddFunc = getAddFunc()
let result = myAddFunc(3,4)



//함수를 리턴값으로 받는 함수. 매개변수 두개를 받아서////매개변수가 없지만 정수값을 반환해주는 함수를 반환하는 함수.
func getNewAddFunc(firstNum:Int, secondNum:Int) -> () ->Int {
    func addFunc() -> Int {
        return firstNum + secondNum
    }
    return addFunc
}

let myNewAddFunc = getNewAddFunc(firstNum: 4, secondNum: 7)
let result2 = myNewAddFunc()












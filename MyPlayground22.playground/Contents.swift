
import UIKit

class Book {
    var title:String
    var coverImage:UIImage?
    var price:Int
    private var secretPrice:Int
    //쓰는데 불 필요해서 감춰야 할 때 private을 달아놓는다.
    
    init(title:String, coverImage:UIImage?, price:Int){
    self.title = title
    self.price = price
    self.secretPrice = price * 0.3
    self.coverImage = coverImage
}

    //이 class를 벗어난 곳에서는 이 함수 쓸 수 없음.
    private  func getPrice() ->String {
        return "삼백원"
    }
    
    func testFunc() {
        getPrice()
    }
}


var book = Book(title: "Hello World", coverImage: nil, price: 300)

var priceStr = book.getPrice()
print(priceStr)



//: A UIKit based Playground for presenting user interface
var ratings:[Double]? = nil

ratings = [4.5, 3.0, 5.0, 2.5]

func ratingRecord (history:[Double]) -> (average:Double, min:Double, max:Double) {
    var sum = 0.0, min = history[0], max = history[0]
    
    for value in history {
        if min > value {min = value}
        if max < value {max = value}
        sum += value
    }
    let average = sum / Double(history.count)
    return (average, min, max)
}

var bookDescription:String = ""
if let theRatings = ratings {
    let record = ratingRecord(history: theRatings)
    bookDescription += "has \(theRatings.count)ratings, \r\n average is \(record.average), from \(record.min) to \(record.max)"
}




import Foundation

infix operator ^^ { }
func ^^ (radix: Int, power: Int) -> Int {
    return Int(pow(Double(radix), Double(power)))
}

func numbersWithNSevens(a: Int, b:Int, n:Int) {
    var sevensCount: Int
    for number in a...b {
        sevensCount = String(number).componentsSeparatedByString("7").count - 1
        if sevensCount == n {
            println(number)
        }
    }
}


numbersWithNSevens(1, 10, 1)



func reverseNumber(num: Int) -> Int {
    if (num < 100) || (num > 999) {
        return -1
    }
    var result: Int = 0
    var current: Int = num
    for var power = 2; power >= 0; --power  {
        result = result + (current % 10) * (10^^power)
        current = current / 10
    }
    return result
}

reverseNumber(123)




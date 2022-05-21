import Foundation

public func printPrimeNumber(n: Int) {
    let number = 2
    var isPrime = "is "
    if n < number {
        print("\(n) is not prime")
    } else if n == number {
        print("\(n) is prime")
    } else {

        for i in number...n-1 {
            if n % i == 0 {
                isPrime = "is not "
                break
            }
        }
        print("\(n) \(isPrime) prime")
    }
}

public func isPrimeNumber(n: Int) -> Bool {
    let number = 2
    if n < number {
        return false
    } else if n == number {
        return true
    } else {

        for i in number...n-1 {
            if n % i == 0 {
                return false
            }
        }
       return true
    }
}


public func printPrimeUptill(n: Int) {
    if n < 2 {
        return
    } else {
        for i in 2...n {
            if isPrimeNumber(n: i) {
                print(i)
            }
        }
    }
}

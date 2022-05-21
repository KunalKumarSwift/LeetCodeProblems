import Foundation

public func factorial(n: Int) -> Int {
    if n == 0 {
        return 1
    } else {
        return n * factorial(n: n-1)
    }
}

public func printFactorial(n: Int) {
    print(factorial(n: n))
}

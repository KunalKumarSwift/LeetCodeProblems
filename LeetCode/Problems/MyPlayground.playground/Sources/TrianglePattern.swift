import Foundation
/*
 Prints A pattern like below:

                                   1
                              1    2    1
                         1    2    3    2    1
                    1    2    3    4    3    2    1
               1    2    3    4    5    4    3    2    1
          1    2    3    4    5    6    5    4    3    2    1
     1    2    3    4    5    6    7    6    5    4    3    2    1
1    2    3    4    5    6    7    8    7    6    5    4    3    2    1

 */
public func printTraingle(n: Int) {
    let row = 2 * n - 1
    for i in 1...n {
        for j in 1...row {
            let lowerRange = n-(i-1)
            let upperRange = n+(i-1)

            if j < lowerRange {
                print(" ", terminator: "    ")
            }
            if (lowerRange..<n).contains(j) {
                print(((i) - (n-j)), terminator: "    ")
            }

            if j == n {
               print(i, terminator: "    ")
            }

            if (n+1..<upperRange+1).contains(j) {
                print((i) - (j - n), terminator: "    ")
            }
        }
        print("")
    }
}

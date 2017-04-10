//: Playground - noun: a place where people can play

import UIKit

var fram = [Int]()
var numberoffram = 6
var referren = [7 , 0 , 1 , 2 , 0 , 3 , 0 , 4 , 2 , 3 , 0 , 3 , 2 , 1 , 2 , 0 , 1 , 7 , 0 , 1]
var check = false
var pagefaults = 0
for element in referren {
        if fram.count < numberoffram {
            if let index = fram.index(of: element) {
            }
            else {
                fram.append(element)
                pagefaults += 1
            }
    }
        else {
            check = false
            for item in fram {
                if element == item {
                    let index = fram.index(of: item)
                    fram.remove(at: index!)
                    fram.append(element)
                    check = true
                }
            }
            if check == false {
                fram.removeFirst()
                fram.append(element)
                pagefaults += 1
            }
        }
        print(fram)
}
print(pagefaults)

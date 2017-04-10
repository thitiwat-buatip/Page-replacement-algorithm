//: Playground - noun: a place where people can play

import UIKit

var fram = [Int]()
var reference = [7 , 0 , 1 , 2 , 0 , 3 , 0 , 4 , 2 , 3 , 0 , 3 , 2 , 1 , 2 , 0 , 1 , 7 , 0 , 1]
var dupical = 0
var numoffram = 4
var pagefaults = 0

for element in reference {
    dupical = 0
    if let index = fram.index(of: element){
        print(fram)
    }
    else {
            if fram.count < numoffram {
                fram.append(element)
                pagefaults += 1
        
        }
            else {
        
                for item in fram {
                    if item == element {
                        dupical = 1
                    }
                }
                if dupical == 0 {
                fram.removeFirst()
                fram.append(element)
                pagefaults += 1
                }
            }
        print(fram)
    }
}
print(pagefaults)
	

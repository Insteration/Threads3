//
//  main.swift
//  Threads3
//
//  Created by Артём Кармазь on 7/17/19.
//  Copyright © 2019 Артём Кармазь. All rights reserved.
//

import Foundation

//print("Hello, World!")

func isSimple(_ num: Int) -> Bool {
    if num < 2 {
        return false
    }
    if Range(2...3).contains(num) {
        return true
    }
    for i in 2...num / 2 {
        if num % i == 0 {
            return false
        }
    }
    return true
}


//var mas = [0, 1000, 10_000, 20_000, 50_000, 1_000_000]
//
//for i in 0..<mas.count - 1 {
//    var count = 0
//    for j in mas[i]..<mas[i+1] {
//        if isSimple(j) {
//            count += 1
//            if j % 50_000 == 0 {
//                print(count)
//            }
//        }
//    }
//    print(mas[i], " - ", mas[i+1], " = ", count)
//}


//for j in 0..<1000 {
//    var count = 0
//    for i in 1000 * j..<1000 * j + 1000 {
//        if isSimple(i) {
//            count += 1
//        }
//    }
//    print(1000 * j, " - ", 1000 * j + 1000, " = ", count)
//}

//var array = [Int]()
//for i in 0..<Int16.max {
//    if isSimple(Int(i)) {
//        //print(i)
//        array.append(Int(i))
//    }
//}
//print(array)
//print("ok")


var array = Set<Int>()

var end = 1000
for i in 0..<10 {
//    let thread = Thread {
        for j in (i * end)..<(i * end) + end {
            if isSimple(j) {
                array.insert(j)

            }
        }
//    }
//    thread.start()
}
print(array.sorted())

//thread.start()

readLine()

//
//  ViewController.swift
//  swift-algorithm-practice
//
//  Created by Han-Saem Park on 2024-05-10.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        main()
    }

    func main()
    {
            
        // STACK (use array)
        print("-----------------")
        print("STACK 1 (use array)")
        var stackArray: [any Comparable] = []
        stackArray.append("test")
        stackArray.append(1)
        stackArray.append("w")
        stackArray.append(-20)
        print(stackArray)
        print(stackArray.popLast()!)

        // Stack
        print("-----------------")
        print("STACK 2")
        var myStack: Stack = Stack<Int>()
        myStack.push(10)
        myStack.push(20)
        myStack.push(30)
        print(myStack.pop()!)
        print(myStack.pop()!)

        // Queue
        print("-----------------")
        print("QUEUE")
        let N = 10//Int(readLine()!)!
        var temp = [Int]()
        for i in 1...N {
            temp.append(i)
        }
        var myQueue: Queue = Queue<Int>(temp)
        print("Queue - dequeue: \(myQueue.pop())")
        myQueue.push(20)
        print("Queue - dequeue: \(myQueue.pop())")


        // Permutation
        print("-----------------")
        print("PERMUTATION")
        print(permute([2,2,3], 2))
        print(permute([2,2,3], 2).count)


        // Combination
        print("-----------------")
        print("COMBINATION")
        print(combi1([3, 5, 3], 2))
        print(combi1([3, 5, 3], 2).count)
        print(combi2([3, 5, 3], 2))
        print(combi2([3, 5, 3], 2).count)
    }
}


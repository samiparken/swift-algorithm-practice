//
//  Stack.swift
//  swift-algorithm-practice
//
//  Created by Han-Saem Park on 2024-05-10.
//

import Foundation

// STACK
struct Stack<T> {
    private var stack: [T] = []
    
    public var count: Int {
        return stack.count
    }
    
    public var isEmpty: Bool {
        return stack.isEmpty
    }
    
    public mutating func push(_ element: T) {
        stack.append(element)
    }
    
    public mutating func pop() -> T? {
        return isEmpty ? nil : stack.popLast()!
    }
}

//
//  GCD&LCM.swift
//  swift-algorithm-practice
//
//  Created by Han-Saem Park on 2024-05-10.
//

import Foundation

// 최대공약수
// greatest common divisor
func GCD(_ a: Int, _ b: Int) -> Int {
    let mod: Int = a % b
    return 0 == mod ? min(a, b) : GCD(b, mod)
}

// 최소공배수
// least common multiple
func LCM(_ a: Int, _ b: Int) -> Int {
    return a * b / GCD(a, b)
}

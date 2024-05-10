//
//  Permutation.swift
//  swift-algorithm-practice
//
//  Created by Han-Saem Park on 2024-05-10.
//

import Foundation

// 순열 Permutation
func permute(_ nums: [Int], _ targetNum: Int) -> [[Int]] {
    var result = [[Int]]()
    var visited = [Bool](repeating: false, count: nums.count)
    
    func permutation(_ nowPermute: [Int]) {
        if nowPermute.count == targetNum {
            
            // check duplicate
            let isDuplicate = result.filter { $0 == nowPermute }
            if isDuplicate.count == 0 {
                result.append(nowPermute)
            }
            return
        }
        for i in 0..<nums.count {
            if visited[i] == true {
                continue
            }
            else {
                visited[i] = true
                permutation(nowPermute + [nums[i]])
                visited[i] = false
            }
        }
    }
    permutation([])
    
    return result
}

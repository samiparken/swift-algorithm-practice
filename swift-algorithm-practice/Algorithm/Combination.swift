//
//  Combination.swift
//  swift-algorithm-practice
//
//  Created by Han-Saem Park on 2024-05-10.
//

import Foundation

func combi1(_ nums: [Int], _ targetNum: Int) -> [[Int]] {
    var result = [[Int]]()
    var visited = Array(repeating: false, count: nums.count)
    
    func combination(_ index: Int, _ nowCombi: [Int]) {
        if nowCombi.count == targetNum {
            result.append(nowCombi)
            return
        }
        
        for i in index..<nums.count {
            if visited[i] == true {
                continue
            }
            else {
                visited[i] = true
                combination(i+1, nowCombi + [nums[i]])
                visited[i] = false
            }
        }
    }
    
    combination(0, [])
    
    return result
}

// 조합 Combination (Ver 2)
func combi2(_ nums: [Int], _ targetNum: Int) -> [[Int]] {
    var result = [[Int]]()
    
    func combination(_ index: Int, _ nowCombi: [Int]) {
        if nowCombi.count == targetNum {
            let toResult = nowCombi.sorted()
            
            //check duplicate
            let isDuplicate = result.filter { $0 == toResult}
            if isDuplicate.count == 0 {
                result.append(toResult)
            }
            return
        }
        for i in index..<nums.count {
            combination(i + 1, nowCombi + [nums[i]])
        }
    }
    
    combination(0, [])
    
    return result
}

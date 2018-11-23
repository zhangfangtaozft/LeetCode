//
//  main.swift
//  Longest Palindromic Substring - Swift
//
//  Created by frank.zhang on 2018/11/23.
//  Copyright © 2018 Frank.zhang. All rights reserved.
//

import Foundation
func longestPalindrome(_ s: String) -> String {
    guard s.characters.count > 1 else {
        return s
    }
    
    var sChars = [Character](s.characters)
    let len = sChars.count
    var maxLen = 1
    var maxStart = 0
    var isPalin = Array(repeating: Array(repeating: false, count : len), count : len)
    
    for i in 0...len - 1 {
        isPalin[i][i] = true
    }
    
    for i in 0...len - 2 {
        if sChars[i] == sChars[i + 1] {
            isPalin[i][i + 1] = true
            maxLen = 2
            maxStart = i
        }
    }
    
    if len >= 3 {
        for length in 3...len {
            for i in 0...len - length {
                if sChars[i] == sChars[i + length - 1] && isPalin[i + 1][i + length - 2] {
                    isPalin[i][i + length - 1] = true
                    maxLen = length
                    maxStart = i
                }
            }
        }
    }
    
    return String(sChars[maxStart...maxStart + maxLen - 1])
}

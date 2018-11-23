//
//  main.swift
//  Longest Substring Without Repeating Characters - Swift
//
//  Created by frank.zhang on 2018/11/23.
//  Copyright © 2018 Frank.zhang. All rights reserved.
//

import Foundation

func lengthOfLongestSubstring(_ s: String) -> Int {
    var longest = 0, left = 0, set = Set<Character>()
    let sChars = Array(s)
    for (i, char) in sChars.enumerated() {
        if set.contains(char){
            longest = max(longest, i - left)
            while sChars[left] != char{
                set.remove(sChars[left])
                left += 1
            }
            left += 1
        }
        else{
            set.insert(char)
        }
    }
    return max(longest, sChars.count - left)
}


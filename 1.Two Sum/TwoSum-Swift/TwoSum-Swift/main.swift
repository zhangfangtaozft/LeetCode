//
//  main.swift
//  TwoSum-Swift
//
//  Created by frank.zhang on 2018/11/22.
//  Copyright © 2018 Frank.zhang. All rights reserved.
//

import Foundation

func twoSum(_ nums: [Int], _ target: Int) ->[Int]{
    var dict = [Int : Int]()
    for (i, num) in nums.enumerated() {
        if let lastIndex = dict[target - num]{
            return [lastIndex,i]
        }
        dict[num] = i
    }
    fatalError("No valid outputs")
}

print("\(twoSum([1,2,3,4,5,6,7,8,9,10], 15))")

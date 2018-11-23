//
//  main.c
//  TwoSum-C
//
//  Created by frank.zhang on 2018/11/22.
//  Copyright © 2018 Frank.zhang. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include <limits.h>
int * twoSum(int* nums, int numsSize, int target);

int main(int argc, const char * argv[]) {
    int array[9] = {1,2,3,4,5,6,7,8,9};
    int target = 14;
    int *num = twoSum(array, 9, target);
    printf("%d - %d/n",num[0],num[1]);
    return 0;
}

int * twoSum(int* nums, int numsSize, int target){
    int min = INT_MAX;
    int i = 0;
    for (i = 0; i < numsSize; i++) {
        if (nums[i] < min)
            min = nums[i];
    }
    int max = target - min;
    int len = max - min + 1;
    int *table = (int *)malloc(len * sizeof(int));
    int *indice = (int *)malloc(2 * sizeof(int));
    for (i = 0; i < len; i++) {
        table[i] = -1;
    }
    for (i = 0; i < numsSize; i ++) {
        if (nums[i] - min < len) {
            if (table[target - nums[i] - min] != -1) {
                indice[0] = table[target - nums[i] - min];
                indice[1] = i;
                return indice;
            }
            table[nums[i] - min] = i;
        }
    }
    free(table);
    return indice;
}

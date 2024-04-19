#pragma once

#include <iostream>
#include <vector>
#include <algorithm>

class Foo {
public:
    Foo() {}
    ~Foo() {}
    
    void sort(std::vector<int>& nums) {
        std::sort(nums.begin(), nums.end());
    }
    int sum(std::vector<int>& nums) {
        int sum = 0;
        for (int num : nums) {
            sum += num;
        }
        return sum;
    }
};

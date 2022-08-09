// SPDX-License-Identifier: MIT
//That was the hardest today. - 09/08/2022 :) 
pragma solidity ^0.8.13;

contract ForAndWhileLoops {
    function sum(uint _n) external pure returns (uint) {
        // Write your code here
        uint s = 1; //Important in this sample is set initial value for s and accumulator variables
        uint accumulator = 0;
        while (s <= _n) {
            accumulator = accumulator + s;
            s++;
        }
        return accumulator;
    }
}

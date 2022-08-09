// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Counter {
    // Write your code here
    uint public count; 
    
    function inc() external {
        count = count + 1;
    }
    
    function dec() external {
        count = count - 1;
    }
    
}

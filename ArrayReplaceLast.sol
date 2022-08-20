// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract ArrayReplaceLast {
    uint[] public arr = [1, 2, 3, 4];

    function remove(uint _index) external {
        // Fábio Task 1
        require(_index < arr.length, "index out of bound");
        
        arr[_index] = arr[arr.length - 1];
        arr.pop();
    }
}

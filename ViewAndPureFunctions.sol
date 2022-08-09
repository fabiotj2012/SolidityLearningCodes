// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract ViewAndPureFunctions {
    uint public num;

    // This is a view function. It reads the state variable "num"
    function addToNum(uint x) external view returns (uint) {
        return num + x;
    }

    // This is a pure function. It does not read any state or global variables.
    function add(uint x, uint y) external pure returns (uint) {
        return x + y;
    }
}

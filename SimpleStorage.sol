// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract SimpleStorage {
    //Fábio task 1
    string public text;
 
    //Fábio task 2
    function set(string calldata _text) external {
        text = _text;
    }
 
    //Fábio task 3
    function get() external view returns (string memory) {
        return text;
    }
    
    
    
}

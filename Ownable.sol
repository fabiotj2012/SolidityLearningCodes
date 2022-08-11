// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Ownable {
    //Fábio task 1
    address public owner = msg.sender;
    
    //Fábio task 2 - done with Hint 2
    modifier onlyOwner() {
        require(msg.sender == owner, "not owner");
        _;
    }
    
    //Fábio task 3 - The solution involved using the onlyOwner modifier in the setOwner function 
    // but this was not explicit in the statement of task 3.
    function setOwner(address _newOwner) external onlyOwner() {
        owner = _newOwner;
        if ( _newOwner == address(0) ) {
           revert("new owner = zero address");
        }
    }
}

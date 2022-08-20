// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Payable {
    // Payable address can receive Ether
    address payable public owner;

    // Payable constructor can receive Ether
    constructor() payable {
        owner = payable(msg.sender);
    }

    //<FABIO> The task
    function deposit() external payable {}
    
    //<FABIO> An aditional task.
    function getBalance() external view returns (uint ) {
        return address(this).balance;
    }
}

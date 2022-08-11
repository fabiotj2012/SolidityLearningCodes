// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract ConstructorIntro {
    address public owner;
    uint public x;

    constructor( uint _input) {
        // Here the owner is set to the caller
        owner = msg.sender;
        
        x = _input;
    }
}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract MappingBasic {
    // Mapping from address to uint used to store balance of addresses
    mapping(address => uint) public balances;

    // Nested mapping from address to address to bool
    // used to store if first address is a friend of second address
    mapping(address => mapping(address => bool)) public isFriend;

    function examples() external {
        // Insert
        balances[msg.sender] = 123;
        // Read
        uint bal = balances[msg.sender];
        // Update
        balances[msg.sender] += 456;
        // Delete
        delete balances[msg.sender];

        // msg.sender is a friend of this contract
        isFriend[msg.sender][address(this)] = true;
    }
    
    //Fábio task 1 - In this example once again I needed to see the tip, 
    // because the statement did not say "view" so the code gave a Invalid BigNumber error...
    function get(address _addr) external view returns(uint) {
        return balances[_addr];
    }
    
    //Fábio task 2
    function set(address _addr, uint _val) external {
        balances[_addr] = _val;
    }
    
    //Fábio task 3
    function remove(address _addr) external {
      delete  balances[_addr];
    }
}

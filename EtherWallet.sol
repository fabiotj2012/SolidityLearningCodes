// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract EtherWallet {
    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
    }
    
    //<FABIO> 19/08/2022
    receive() external payable{}
    
    function withdraw(uint _amount) external {
        require(msg.sender == owner, "caller is not owner");
        
        (bool sent, ) = owner.call{value: _amount}("");
        require(sent, "Failed to send Ether");
    }
    //<FABIO_END>
}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract SendEther {
    
    //<FABIO>
    constructor() payable{}
    
    receive() external payable {}
    //<FABIO_END>

 
    function sendViaTransfer(address payable _to) external payable {
        // This function is no longer recommended for sending Ether.
        _to.transfer(msg.value);
    }

    function sendViaSend(address payable _to) external payable {
        // Send returns a boolean value indicating success or failure.
        // This function is not recommended for sending Ether.
        bool sent = _to.send(msg.value);
        require(sent, "Failed to send Ether");
    }

    
    /*function sendViaCall(address payable _to) external payable {
        // Call returns a boolean value indicating success or failure.
        // This is the current recommended method to use.
        (bool sent, bytes memory data) = _to.call{value: msg.value}("");
        require(sent, "Failed to send Ether");
    }
    */
    //<FABIO>
    
    function sendEth(address payable _to, uint _amount) external {
        (bool sent,) = _to.call{value: _amount}("");
        require(sent, "Failed to send Ether");
    }
    
    //<FABIO_END>

}

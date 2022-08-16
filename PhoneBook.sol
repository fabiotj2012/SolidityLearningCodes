// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract PhoneBook{

    //Structure 
    struct Contact {
        string name;
        string phone;
        string company;
        address owner;
    }
    
    //Contact[] public contacts;
    mapping(address => Contact) public contacts;
    
    //New contact
    function newcontac(string calldata _name, string calldata _phone, string calldata _company ) external {
        contacts[msg.sender] = Contact({
            name: _name, 
            phone: _phone,
            company: _company,
            owner : msg.sender            
        });
    }

    //Get contact
    function get(address _addr) external view returns (string memory, string memory, string memory) {
        Contact storage contact = contacts[_addr];
        return (contact.name , contact.phone, contact.company);
    }



}
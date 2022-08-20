// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract PhoneBookStruct{

    //Structure 
    struct Contact {
        string name;
        string phone;
        string company; 
        address owner;       
    }
    
    //Contact[] public contacts;
    mapping(address => Contact[] ) contacts;
    
    //New contact
    function newcontact(string calldata _name, string calldata _phone, string calldata _company ) external {
        contacts[msg.sender].push(Contact({
            name: _name, 
            phone: _phone,
            company: _company,
            owner: msg.sender            
        }));
    }

    //Get contact
    function get() external view returns (Contact[] memory) {
        //Contact storage contact = contacts[_index];
        //return (contact.name , contact.phone, contact.company);
        return contacts[msg.sender];
    }
}
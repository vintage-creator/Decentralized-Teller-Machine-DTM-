//SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;

/** 
 * @title Decentralized Teller Machine (DTM)
 * @author ISRAEL ABAZIE
 */

 contract DTM {
        address public user;
        mapping (address => uint) public userBalance;


    constructor (address _user) {
        user = _user;
    
    }
    
    function checkBalance () public view returns (uint) {
        return userBalance[user];
    }
    function withdrawFunds (uint amount) public {
        require (userBalance[user] > amount, "Insufficient funds!");
        userBalance[user] -= amount;
    }
    function sendMoney (address recipient, uint amount) public payable {
        require (userBalance[user] > amount, "You have insufficient funds.");
           _sendMoney (recipient, amount);
    }
    function _sendMoney (address to, uint amount) private {
        userBalance[to] += amount;
    }
 }
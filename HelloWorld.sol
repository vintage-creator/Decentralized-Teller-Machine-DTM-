//SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
 contract HelloWorld {
    address Owner;
    string sayGreeting = "HelloWorld, we move!";

    constructor() {
        Owner = msg.sender;
    }
    function sayHello1 () public view returns (string memory) {
        if (msg.sender == Owner) {
        return "Hello Israel Abazie";
        } else {
        return "Hello world";
        }
    }
    function sayHello2 () public view returns (string memory) {
        return sayGreeting;
    }
}
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract HelloWorld {
    string message;

    constructor() {
        message = "Hello World!";
    }

    function sayHello() public view returns (string memory) {
        return message;
    }
}

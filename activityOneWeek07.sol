// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract activityOneWeek07 {
    uint public publicCounter = 1;
    uint internal internalCounter = 2;
    uint private privateCounter = 3;

    address public lastCaller;

    uint public lastBlockNumber;

    function updateCounters(uint _increment) public {
        uint localSum = publicCounter + _increment;

        publicCounter = localSum;
        internalCounter = internalCounter + _increment;
        privateCounter = privateCounter + _increment;

        lastCaller = msg.sender;
        lastBlockNumber = block.number;
    }

    function getInternalAndPrivate() public view returns (uint, uint) {
        return (internalCounter, privateCounter);
    }

    function addLocals(uint a, uint b) public pure returns (uint) {
        uint result = a + b;
        return result;
    }
}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ImmutableDemo {
    // Immutable state variables
    address public immutable owner;
    uint public immutable startTime;
    bytes32 public immutable hashValue;

    // Constructor
    // "0x1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef"
    constructor(bytes32 _hashValue) {
        owner = msg.sender;
        startTime = block.timestamp;
        hashValue = _hashValue;
    }

    // Other functions
    function getOwner() public view returns (address) {
        return owner;
    }

    function getStartTime() public view returns (uint) {
        return startTime;
    }

    function getHashValue() public view returns (bytes32) {
        return hashValue;
    }
}

/*
the main differences are:

Value Assignment: Immutable variables are assigned values during contract construction, while constants are assigned values at compile-time.

Data Types: Constants can only be value types, while immutable variables can be of any data type, including complex types.

Evaluation Time: Constants are evaluated at compile-time, while immutable variables are evaluated at deployment time, based on the constructor arguments.
 */
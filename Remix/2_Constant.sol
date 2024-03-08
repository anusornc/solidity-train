// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ConstantDemo {
    // Constant state variables
    address public constant OWNER_ADDRESS = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    uint public constant MAXIMUM_SUPPLY = 1000000;
    string public constant TOKEN_NAME = "ConstantToken";
    string public constant TOKEN_SYMBOL = "CONST";

    // Constant function
    function getTokenDetails() public pure returns (string memory, string memory) {
        return (TOKEN_NAME, TOKEN_SYMBOL);
    }

    // Constant expressions
    uint public constant INITIAL_SUPPLY = MAXIMUM_SUPPLY / 2;
    uint public constant MULTIPLIER = 2 ** 3; // 8

    // Immutable state variable
    address public immutable deployer;

    constructor() {
        deployer = msg.sender;
    }
}
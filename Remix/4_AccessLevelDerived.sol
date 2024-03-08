// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./4_AccessLevelBase.sol";

contract AccessLevelDerived is AccessLevelBase {
    function accessBaseContract() public view returns (uint, uint, uint) {
        // Can access public and internal state variables and functions from the base contract
        uint public_data = publicData;
        uint internal_data = getInternalData();

        // Cannot access private state variables and functions directly
        // uint private_data = privateData; // This line will not compile
        // uint private_func = getPrivateData(); // This line will not compile

        return (public_data, internal_data, this.externalFunction());
    }
}
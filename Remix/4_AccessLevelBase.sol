// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AccessLevelBase {
    // Public state variable
    uint public publicData = 10;

    // Private state variable
    uint private privateData = 20;

    // Internal state variable
    uint internal internalData = 30;

    // Public function
    function getPublicData() public view returns (uint) {
        return publicData;
    }

    // Private function
    function getPrivateData() private view returns (uint) {
        return privateData;
    }

    // Internal function
    function getInternalData() internal view returns (uint) {
        return internalData;
    }

    // External function
    function externalFunction() external pure returns (uint) {
        return 42;
    }

    // Public function calling other functions
    function accessLevels() public view returns (uint, uint, uint, uint) {
        uint public_data = getPublicData();
        uint private_data = getPrivateData();
        uint internal_data = getInternalData();
        uint external_data = this.externalFunction();

        return (public_data, private_data, internal_data, external_data);
    }
}


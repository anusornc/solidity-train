// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PrimitiveTypes {
    // Boolean
    bool public isAllowed = true;

    // Integers (signed and unsigned)
    int public signedInteger = -42;
    uint public unsignedInteger = 42;

    // Address
    address public ownerAddress;

    // Bytes
    bytes32 public data = "hello";

    // Enum
    enum Color {Red, Green, Blue}
    Color public favoriteColor = Color.Green;

    constructor() {
        ownerAddress = msg.sender;
    }

    function flipBoolean() public {
        isAllowed = !isAllowed;
    }

    function changeInteger(int _signedInteger, uint _unsignedInteger) public {
        signedInteger = _signedInteger;
        unsignedInteger = _unsignedInteger;
    }

    // examples of data with bytes32 is "hello", "world", "hello world"
    // "0x68656c6c6f20776f726c64000000000000000000000000000000000000000000" fixed 32 bytes
    function changeData(bytes32 _data) public {
        data = _data;
    }

    function changeColor(Color _color) public {
        favoriteColor = _color;
    }

    function getData() public view returns (string memory) {
        return string(abi.encodePacked(data));
    }
}